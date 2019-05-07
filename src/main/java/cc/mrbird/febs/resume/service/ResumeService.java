package cc.mrbird.febs.resume.service;

import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.resume.domain.Resume;
import cc.mrbird.febs.system.domain.User;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;


public interface ResumeService extends IService<Resume> {


    /**
     * 查询职位详情，包括基本信息
     *
     * @param resume resume
     * @return IPage
     */
    IPage<Resume> findResumeDetail(Resume resume, QueryRequest queryRequest);

    /**
     * 新增简历
     *
     * @param resume resume
     */
    void createResume(Resume resume) throws Exception;

    /**
     * 修改简历信息
     *
     * @param resume resume
     */
    void updateResume(Resume resume) throws Exception;

    /**
     *
     * @param resumeId
     * @param avatar
     * @throws Exception
     */
    void updateAvatar(String resumeId,String avatar) throws Exception;

    /**
     * 删除简历信息
     *
     * @param resumeId 简历 id
     */
    void deleteResume(String resumeId) throws Exception;

}
