package cc.mrbird.febs.project.service.impl;

import cc.mrbird.febs.common.domain.FebsConstant;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.project.domain.Project;
import cc.mrbird.febs.project.dao.ProjectMapper;
import cc.mrbird.febs.project.service.ProjectService;
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
@Service("projectService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class ProjectServiceImpl extends ServiceImpl<ProjectMapper, Project> implements ProjectService {

    @Override
    public IPage<Project> findProjectDetail(Project project, QueryRequest request) {
        try {
            Page<Project> page = new Page<>();
            SortUtil.handlePageSort(request, page, "PROJECT_ID", FebsConstant.ORDER_ASC, false);
            return this.baseMapper.findProjectDetail(page,project);
        } catch (Exception e) {
            log.error("查询职位异常", e);
            return null;
        }
    }

    @Override
    @Transactional
    public void createProject(Project Project) throws Exception {
        // 创建职位
        Project.setCreateTime(new Date());
        save(Project);
    }

    @Override
    public void createProjects(List<Project> list) throws Exception {
        for (int i = 0; i < list.size(); i++) {
            list.get(i).setCreateTime(new Date());
            save(list.get(i));
        }
    }
    
    @Override
    @Transactional
    public void updateProject(Project Project) throws Exception {
        // 更新职位
        Project.setModifyTime(new Date());
        updateById(Project);

    }

    @Override
    @Transactional
    public void deleteProjects(String[] ProjectIds) throws Exception {

        List<String> list = Arrays.asList(ProjectIds);

        removeByIds(list);
    }

}
