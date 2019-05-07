package cc.mrbird.febs.project.dao;

import cc.mrbird.febs.project.domain.Project;
import cc.mrbird.febs.project.domain.ProjectContact;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

public interface ProjectContactMapper extends BaseMapper<ProjectContact> {

    IPage<ProjectContact> findProjectContactDetail(Page page, @Param("projectContact") ProjectContact projectContact);

}