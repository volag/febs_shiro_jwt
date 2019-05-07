package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.Log;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.common.service.QnUploadService;
import cc.mrbird.febs.common.upload.FileMsg;
import cc.mrbird.febs.common.utils.CollectionUtil;
import cc.mrbird.febs.system.domain.Company;
import cc.mrbird.febs.system.service.CompanyService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.google.common.collect.Lists;
import com.wuwenze.poi.ExcelKit;
import com.wuwenze.poi.handler.ExcelReadHandler;
import com.wuwenze.poi.pojo.ExcelErrorField;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Slf4j
@Validated
@RestController
@RequestMapping("company")
public class CompanyController extends BaseController {

    private String message;

    @Autowired
    private CompanyService companyService;
    @Autowired
    private QnUploadService qnUploadService;


    @GetMapping
    @RequiresPermissions("company:view")
    public Map<String, Object> ContractList(QueryRequest request, Company company) {
        return getDataTable(this.companyService.findCompanyDetail(company, request));
    }

    @PostMapping("uploadAvatar")
    //使用MultipartFile 作为入参
    public FileMsg uploadAvatar(@RequestParam(name="file") MultipartFile file,
                                @NotBlank(message = "{required}") String companyId,
                                @NotBlank(message = "{required}") String key) throws Exception {
        // 包含原始文件名的字符串
        String fi = file.getOriginalFilename();
        // 提取文件拓展名
        String fileNameExtension = fi.substring(fi.indexOf("."), fi.length());
        // 生成云端的真实文件名
        String remoteFileName = UUID.randomUUID().toString() + fileNameExtension;

        Boolean flag = qnUploadService.upload(file.getBytes(), remoteFileName,key);

        FileMsg fileMsg = new FileMsg();
        fileMsg.setFilename(remoteFileName);

        if(flag){
            fileMsg.setStatus("success");
            this.companyService.updateAvatar(companyId,remoteFileName);
            return fileMsg;
        }else {
            fileMsg.setStatus("false");
            return fileMsg;
        }
    }

    @GetMapping("check/{companyName}")
    public boolean checkCompanyName(@NotBlank(message = "{required}") @PathVariable String companyName) {
        return this.companyService.findCompany(companyName) == null;
    }

    @Log("查找公司")
    @GetMapping("/{companyName}")
    @RequiresPermissions("company:delete")
    public Company findCompany(@NotBlank(message = "{required}") @PathVariable String companyName) throws FebsException {
        try {
            return this.companyService.findCompany(companyName);
        } catch (Exception e) {
            message = "查找客户失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("新增客户")
    @PostMapping
    @RequiresPermissions("company:add")
    public void addCompany(@Valid Company company) throws FebsException {
        try {
            this.companyService.createCompany(company);
        } catch (Exception e) {
            message = "新增客户失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除客户")
    @DeleteMapping("/{deptIds}")
    @RequiresPermissions("company:delete")
    public void deleteCompany(@NotBlank(message = "{required}") @PathVariable String deptIds) throws FebsException {
        try {
            String[] ids = deptIds.split(StringPool.COMMA);
            this.companyService.deleteCompanies(ids);
        } catch (Exception e) {
            message = "删除客户失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改客户信息")
    @PutMapping
    @RequiresPermissions("company:update")
    public void updateCompany(@Valid Company company) throws FebsException {
        try {
            this.companyService.updateCompany(company);
        } catch (Exception e) {
            message = "修改客户信息失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("导出客户信息")
    @PostMapping("excel")
    @RequiresPermissions("company:export")
    public void export(Company company, QueryRequest request, HttpServletResponse response) throws FebsException {
        try {
            List<Company> companies = this.companyService.findCompanies(company, request);
            ExcelKit.$Export(Company.class, response).downXlsx(companies, false);
        } catch (Exception e) {
            message = "导出客户信息Excel失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("导入客户信息")
    @PostMapping("import")
    @RequiresPermissions("company:import")
    public Map<String, Object> importCompany(@RequestParam MultipartFile file)
            throws Exception {
        long beginMillis = System.currentTimeMillis();

        List<Company> successList = Lists.newArrayList();
        List<Map<String, Object>> errorList = Lists.newArrayList();
        Map<String, Object> rspData = new HashMap<>();

        ExcelKit.$Import(Company.class)
                .readXlsx(file.getInputStream(), new ExcelReadHandler<Company>() {

                    @Override
                    public void onSuccess(int sheetIndex, int rowIndex, Company entity) {
                        successList.add(entity); // 单行读取成功，加入入库队列。
                    }

                    @Override
                    public void onError(int sheetIndex, int rowIndex,
                                        List<ExcelErrorField> errorFields) {
                        // 读取数据失败，记录了当前行所有失败的数据
                        rspData.put("sheetIndex",sheetIndex);
                        rspData.put("rowIndex",rowIndex);
                        rspData.put("errorFields",errorFields);
                    }
                });

        // TODO: 执行successList的入库操作。
        this.companyService.createCompanies(successList);
        rspData.put("data",successList);
        rspData.put("haveError",!CollectionUtil.isEmptyMapList(errorList));
        rspData.put("timeConsuming", (System.currentTimeMillis() - beginMillis) / 1000L);
        return rspData;
    }

}
