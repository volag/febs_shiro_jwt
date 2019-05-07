package cc.mrbird.febs.project.service.impl;

import cc.mrbird.febs.common.domain.FebsConstant;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.project.dao.PersonProjectMapper;
import cc.mrbird.febs.project.domain.PersonProject;
import cc.mrbird.febs.project.service.PersonProjectService;
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
@Service("personProjectService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class PersonProjectServiceImpl extends ServiceImpl<PersonProjectMapper, PersonProject> implements PersonProjectService {

    @Override
    public IPage<PersonProject> findPersonProjectDetail(PersonProject PersonProject, QueryRequest request) {
        try {
            Page<PersonProject> page = new Page<>();
            SortUtil.handlePageSort(request, page, "PERSON_PROJECT_ID", FebsConstant.ORDER_ASC, false);
            return this.baseMapper.findPersonProjectDetail(page,PersonProject);
        } catch (Exception e) {
            log.error("查询职位异常", e);
            return null;
        }
    }

    @Override
    @Transactional
    public void createPersonProject(PersonProject personProject) throws Exception {
        // 创建职位
        personProject.setCreateTime(new Date());
        save(personProject);
    }

    @Override
    @Transactional
    public void updatePersonProject(PersonProject personProject) throws Exception {
        // 更新职位
        personProject.setModifyTime(new Date());
        updateById(personProject);

    }

    @Override
    @Transactional
    public void deletePersonProjects(String[] personProjectIds) throws Exception {

        List<String> list = Arrays.asList(personProjectIds);

        removeByIds(list);
    }

}
