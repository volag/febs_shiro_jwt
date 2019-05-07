package cc.mrbird.febs.project.service;

import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.project.domain.PersonProject;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;


public interface PersonProjectService extends IService<PersonProject> {

    /**
     * 查询项目详情，包括基本信息
     *
     * @param personProject personProject
     * @param queryRequest queryRequest
     * @return IPage
     */
    IPage<PersonProject> findPersonProjectDetail(PersonProject personProject, QueryRequest queryRequest);

    /**
     * 新增项目
     *
     * @param personProject personProject
     */
    void createPersonProject(PersonProject personProject) throws Exception;

    /**
     * 修改项目
     *
     * @param personProject personProject
     */
    void updatePersonProject(PersonProject personProject) throws Exception;

    /**
     * 删除
     *
     * @param personProjectIds 项目 id数组
     */
    void deletePersonProjects(String[] personProjectIds) throws Exception;

}
