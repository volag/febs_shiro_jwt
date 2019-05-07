package cc.mrbird.febs.project.service.impl;

import cc.mrbird.febs.common.domain.FebsConstant;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.project.dao.ProjectContactMapper;
import cc.mrbird.febs.project.domain.ProjectContact;
import cc.mrbird.febs.project.service.ProjectContactService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Slf4j
@Service("projectContactService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class ProjectContactServiceImpl extends ServiceImpl<ProjectContactMapper, ProjectContact> implements ProjectContactService {

    @Override
    public IPage<ProjectContact> findProjectContactDetail(ProjectContact projectContact, QueryRequest request) {
        try {
            Page<ProjectContact> page = new Page<>();
            SortUtil.handlePageSort(request, page, "PROJECT_CONTACT_ID", FebsConstant.ORDER_ASC, false);
            return this.baseMapper.findProjectContactDetail(page,projectContact);
        } catch (Exception e) {
            log.error("查询职位异常", e);
            return null;
        }
    }

    @Override
    @Transactional
    public void createProjectContact(ProjectContact projectContact) throws Exception {
        // 创建职位
        projectContact.setCreateTime(new Date());
        save(projectContact);
    }

    @Override
    @Transactional
    public void updateProjectContact(ProjectContact projectContact) throws Exception {
        // 更新职位
        projectContact.setModifyTime(new Date());
        updateById(projectContact);

    }

    @Override
    @Transactional
    public void deleteProjectContacts(String[] projectContactIds) throws Exception {

        List<String> list = Arrays.asList(projectContactIds);

        removeByIds(list);
    }

}
