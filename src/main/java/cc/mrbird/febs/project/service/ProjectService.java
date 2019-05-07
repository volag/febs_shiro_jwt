package cc.mrbird.febs.project.service;

import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.project.domain.Project;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;


public interface ProjectService extends IService<Project> {

    /**
     * 查询项目详情，包括基本信息
     *
     * @param project project
     * @param queryRequest queryRequest
     * @return IPage
     */
    IPage<Project> findProjectDetail(Project project, QueryRequest queryRequest);

    /**
     * 新增项目
     *
     * @param project project
     */
    void createProject(Project project) throws Exception;

    void createProjects(List<Project> list) throws Exception;
    /**
     * 修改项目
     *
     * @param project project
     */
    void updateProject(Project project) throws Exception;

    /**
     * 删除
     *
     * @param projectIds 项目 id数组
     */
    void deleteProjects(String[] projectIds) throws Exception;

}
