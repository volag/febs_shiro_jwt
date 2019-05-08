package cc.mrbird.febs.project.controller;

import cc.mrbird.febs.common.annotation.Log;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.project.domain.ProjectContact;
import cc.mrbird.febs.project.service.ProjectContactService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.Map;

@Slf4j
@Validated
@RestController
@RequestMapping("projectContact")
public class ProjectContactController extends BaseController {

    private String message;

    @Autowired
    private ProjectContactService projectContactService;

    @GetMapping
    @ApiOperation(value = "查询项目联系")
    //@RequiresPermissions("Contract:view")
    public Map<String, Object> ProjectContactList(QueryRequest request, ProjectContact projectContact) {
        return getDataTable(this.projectContactService.findProjectContactDetail(projectContact, request));
    }

    @Log("新增项目")
    @PostMapping
    @ApiOperation(value = "新增项目联系")
    //@RequiresPermissions("Contract:add")
    public void addProjectContact(@Valid ProjectContact projectContact) throws FebsException {
        try {
            this.projectContactService.createProjectContact(projectContact);
            log.info("新增项目："+projectContact.toString());
        } catch (Exception e) {
            message = "新增项目成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除项目")
    @ApiOperation(value = "删除项目联系")
    @DeleteMapping("/{projectContactIds}")
    //@RequiresPermissions("Contract:delete")
    public void deleteProjectContacts(@NotBlank(message = "{required}") @PathVariable String projectContactIds) throws FebsException {
        try {
            String[] ids = projectContactIds.split(StringPool.COMMA);
            this.projectContactService.deleteProjectContacts(ids);
        } catch (Exception e) {
            message = "删除项目成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改项目信息")
    @PutMapping
    @ApiOperation(value = "修改项目联系")
    //@RequiresPermissions("Contract:update")
    public void updateProjectContact(@Valid ProjectContact projectContact) throws FebsException {
        try {
            this.projectContactService.updateProjectContact(projectContact);
        } catch (Exception e) {
            message = "修改项目信息成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

}
