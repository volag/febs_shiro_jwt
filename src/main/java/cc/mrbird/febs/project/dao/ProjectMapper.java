package cc.mrbird.febs.project.dao;

import cc.mrbird.febs.project.domain.Project;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

public interface ProjectMapper extends BaseMapper<Project> {

    IPage<Project> findProjectDetail(Page page, @Param("project") Project project);

}