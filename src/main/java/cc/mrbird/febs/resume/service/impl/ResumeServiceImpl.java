package cc.mrbird.febs.resume.service.impl;

import cc.mrbird.febs.common.domain.FebsConstant;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.resume.dao.ResumeMapper;
import cc.mrbird.febs.resume.domain.Resume;
import cc.mrbird.febs.resume.service.ResumeService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


@Slf4j
@Service("resumeService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class ResumeServiceImpl extends ServiceImpl<ResumeMapper, Resume> implements ResumeService {


    @Override
    public IPage<Resume> findResumeDetail(Resume Resume, QueryRequest request) {
        try {
            Page<Resume> page = new Page<>();
            SortUtil.handlePageSort(request, page, "resume_id", FebsConstant.ORDER_ASC, false);
            return this.baseMapper.findResumeDetail(page, Resume);
        } catch (Exception e) {
            log.error("查询用户异常", e);
            return null;
        }
    }
    @Override
    @Transactional
    public void createResume(Resume Resume) throws Exception {
        // 创建简历
        save(Resume);
    }

    @Override
    @Transactional
    public void updateResume(Resume Resume) throws Exception {
        // 更新简历
        updateById(Resume);

    }

    @Override
    @Transactional
    public void updateAvatar(String resumeId, String avatar) throws Exception {
        Resume resume = new Resume();
        resume.setResumeId( Long.parseLong(resumeId));
        resume.setPhoto(avatar);
        updateById(resume);
    }

    @Override
    @Transactional
    public void deleteResume(String resumeId) throws Exception {

        removeById(resumeId);
    }

}
