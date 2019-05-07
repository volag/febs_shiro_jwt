package cc.mrbird.febs.project.service;

import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.project.domain.ProjectContact;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;


public interface ProjectContactService extends IService<ProjectContact> {

    /**
     * 查询项目详情，包括基本信息
     *
     * @param ProjectContact ProjectContact
     * @param queryRequest queryRequest
     * @return IPage
     */
    IPage<ProjectContact> findProjectContactDetail(ProjectContact ProjectContact, QueryRequest queryRequest);

    /**
     * 新增项目
     *
     * @param ProjectContact ProjectContact
     */
    void createProjectContact(ProjectContact ProjectContact) throws Exception;

    /**
     * 修改项目
     *
     * @param ProjectContact ProjectContact
     */
    void updateProjectContact(ProjectContact ProjectContact) throws Exception;

    /**
     * 删除
     *
     * @param ProjectContactIds 项目 id数组
     */
    void deleteProjectContacts(String[] ProjectContactIds) throws Exception;

}
