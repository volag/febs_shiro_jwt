package cc.mrbird.febs.project.controller;

import cc.mrbird.febs.common.annotation.Log;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.common.utils.CollectionUtil;
import cc.mrbird.febs.project.dao.ProjectMapper;
import cc.mrbird.febs.project.domain.Project;
import cc.mrbird.febs.project.service.ProjectService;
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
@RequestMapping("project")
public class ProjectController extends BaseController {

    private String message;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private ProjectMapper projectMapper;

    @GetMapping
    @RequiresPermissions("project:view")
    public Map<String, Object> ProjectList(QueryRequest request, Project project) {
        return getDataTable(this.projectService.findProjectDetail(project, request));
    }


    @Log("新增项目")
    @PostMapping
    @RequiresPermissions("project:add")
    public void addProject(@Valid Project project) throws FebsException {
        try {
            this.projectService.createProject(project);
            log.info("新增项目："+project.toString());
        } catch (Exception e) {
            message = "新增项目成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除项目")
    @DeleteMapping("/{projectIds}")
    @RequiresPermissions("project:delete")
    public void deleteProjects(@NotBlank(message = "{required}") @PathVariable String projectIds) throws FebsException {
        try {
            String[] ids = projectIds.split(StringPool.COMMA);
            this.projectService.deleteProjects(ids);
        } catch (Exception e) {
            message = "删除项目成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改项目信息")
    @PutMapping
    @RequiresPermissions("project:update")
    public void updateProject(@Valid Project project) throws FebsException {
        try {
            this.projectService.updateProject(project);
        } catch (Exception e) {
            message = "修改项目信息成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("导出项目信息")
    @PostMapping("excel")
    @RequiresPermissions("project:export")
    public void export(QueryRequest queryRequest, Project project, HttpServletResponse response) throws FebsException {
        try {
            List<Project> projects = this.projectService.findProjectDetail(project, queryRequest).getRecords();
            ExcelKit.$Export(Project.class, response).downXlsx(projects, false);
        } catch (Exception e) {
            message = "导出Excel失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("导入项目信息")
    @PostMapping("import")
    @RequiresPermissions("project:import")
    public Map<String, Object> importProject(@RequestParam MultipartFile file)
            throws Exception {
        long beginMillis = System.currentTimeMillis();

        List<Project> successList = Lists.newArrayList();
        List<Map<String, Object>> errorList = Lists.newArrayList();
        Map<String, Object> rspData = new HashMap<>();

        ExcelKit.$Import(Project.class)
                .readXlsx(file.getInputStream(), new ExcelReadHandler<Project>() {

                    @Override
                    public void onSuccess(int sheetIndex, int rowIndex, Project entity) {
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
        this.projectService.createProjects(successList);
        rspData.put("data",successList);
        rspData.put("haveError",!CollectionUtil.isEmptyMapList(errorList));
        rspData.put("timeConsuming", (System.currentTimeMillis() - beginMillis) / 1000L);
        return rspData;
    }

}
