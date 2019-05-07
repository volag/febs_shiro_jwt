package cc.mrbird.febs.person.controller;

import cc.mrbird.febs.common.annotation.Log;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.common.utils.CollectionUtil;
import cc.mrbird.febs.person.domain.Person;
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

@Slf4j
@Validated
@RestController
@CrossOrigin
@RequestMapping("person")
public class PersonController extends BaseController {

    private String message;

    @Autowired
    private cc.mrbird.febs.person.service.PersonService personService;

    @GetMapping
    @RequiresPermissions("person:view")
    public Map<String, Object> PersonList(QueryRequest request, Person Person) {
        return getDataTable(this.personService.findPersonDetail(Person, request));
    }

    @Log("新增职位")
    @PostMapping
    @RequiresPermissions("person:add")
    public void addPerson(@Valid Person person) throws FebsException {
        try {
            this.personService.createPerson(person);
            log.info("新增职位："+person.toString());
        } catch (Exception e) {
            message = "新增职位成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除职位")
    @DeleteMapping("/{personIds}")
    @RequiresPermissions("person:delete")
    public void deletePersons(@NotBlank(message = "{required}") @PathVariable String personIds) throws FebsException {
        try {
            String[] ids = personIds.split(StringPool.COMMA);
            this.personService.deletePersons(ids);
        } catch (Exception e) {
            message = "删除职位成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改职位信息")
    @PutMapping
    @RequiresPermissions("person:update")
    public void updatePerson(@Valid Person person) throws FebsException {
        try {
            this.personService.updatePerson(person);
        } catch (Exception e) {
            message = "修改职位信息成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @PostMapping("excel")
    @RequiresPermissions("person:export")
    public void export(QueryRequest queryRequest, Person person, HttpServletResponse response) throws FebsException {
        try {
            List<Person> persons = this.personService.findPersonDetail(person, queryRequest).getRecords();
            ExcelKit.$Export(Person.class, response).downXlsx(persons, false);
        } catch (Exception e) {
            message = "导出Excel失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @PostMapping("import")
    @RequiresPermissions("person:import")
    public Map<String, Object> importPerson(@RequestParam MultipartFile file)
            throws Exception {
        long beginMillis = System.currentTimeMillis();

        List<Person> successList = Lists.newArrayList();
        List<Map<String, Object>> errorList = Lists.newArrayList();
        Map<String, Object> rspData = new HashMap<>();

        ExcelKit.$Import(Person.class)
                .readXlsx(file.getInputStream(), new ExcelReadHandler<Person>() {

                    @Override
                    public void onSuccess(int sheetIndex, int rowIndex, Person entity) {
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
        this.personService.createPersons(successList);
        rspData.put("data",successList);
        rspData.put("haveError",!CollectionUtil.isEmptyMapList(errorList));
        rspData.put("timeConsuming", (System.currentTimeMillis() - beginMillis) / 1000L);
        return rspData;
    }

}
