package cc.mrbird.febs.project.controller;

import cc.mrbird.febs.common.annotation.Log;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.project.domain.PersonProject;
import cc.mrbird.febs.project.service.PersonProjectService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.Map;

@Slf4j
@Validated
@RestController
@RequestMapping("personProject")
public class PersonProjectController extends BaseController {

    private String message;

    @Autowired
    private PersonProjectService personProjectService;

    @GetMapping
//    @RequiresPermissions("person:view")
    @ApiOperation(value = "查询人才项目信息")
    public Map<String, Object> PersonProjectList(QueryRequest request, PersonProject personProject) {
        return getDataTable(this.personProjectService.findPersonProjectDetail(personProject, request));
    }

    @Log("新增项目")
    @PostMapping
    //@RequiresPermissions("Contract:add")
    @ApiOperation(value = "项目添加人才")
    public void addPersonProject(@Valid PersonProject personProject) throws FebsException {
        try {
            this.personProjectService.createPersonProject(personProject);
            log.info("新增项目："+personProject.toString());
        } catch (Exception e) {
            message = "新增项目成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除项目")
    @DeleteMapping("/{personProjectIds}")
    @ApiOperation(value = "删除项目中的人才")
    //@RequiresPermissions("Contract:delete")
    public void deletePersonProjects(@NotBlank(message = "{required}") @PathVariable String personProjectIds) throws FebsException {
        try {
            String[] ids = personProjectIds.split(StringPool.COMMA);
            this.personProjectService.deletePersonProjects(ids);
        } catch (Exception e) {
            message = "删除项目成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改项目信息")
    @PutMapping
    //@RequiresPermissions("Contract:update")
    public void updatePersonProject(@Valid PersonProject personProject) throws FebsException {
        try {
            this.personProjectService.updatePersonProject(personProject);
        } catch (Exception e) {
            message = "修改项目信息成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

}
