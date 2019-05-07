package cc.mrbird.febs.contract.controller;

import cc.mrbird.febs.common.annotation.Log;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.contract.domain.Contract;
import cc.mrbird.febs.contract.service.ContractService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.wuwenze.poi.ExcelKit;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Map;

@Slf4j
@Validated
@RestController
@RequestMapping("contract")
public class ContractController extends BaseController {

    private String message;

    @Autowired
    private ContractService contractService;

    @GetMapping
    @RequiresPermissions("Contract:view")
    public Map<String, Object> ContractList(QueryRequest request, Contract contract) {
        return getDataTable(this.contractService.findContractDetail(contract, request));
    }

    @Log("新增职位")
    @PostMapping
    @RequiresPermissions("Contract:add")
    public void addContract(@Valid Contract contract) throws FebsException {
        try {
            this.contractService.createContract(contract);
            log.info("新增职位："+contract.toString());
        } catch (Exception e) {
            message = "新增职位成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除职位")
    @DeleteMapping("/{contractIds}")
    @RequiresPermissions("Contract:delete")
    public void deleteContracts(@NotBlank(message = "{required}") @PathVariable String contractIds) throws FebsException {
        try {
            String[] ids = contractIds.split(StringPool.COMMA);
            this.contractService.deleteContracts(ids);
        } catch (Exception e) {
            message = "删除职位成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改职位信息")
    @PutMapping
    @RequiresPermissions("Contract:update")
    public void updateContract(@Valid Contract contract) throws FebsException {
        try {
            this.contractService.updateContract(contract);
        } catch (Exception e) {
            message = "修改职位信息成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @PostMapping("excel")
    @RequiresPermissions("contract:export")
    public void export(QueryRequest queryRequest, Contract contract, HttpServletResponse response) throws FebsException {
        try {
            List<Contract> Contracts = this.contractService.findContractDetail(contract, queryRequest).getRecords();
            ExcelKit.$Export(Contract.class, response).downXlsx(Contracts, false);
        } catch (Exception e) {
            message = "导出Excel失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

}
