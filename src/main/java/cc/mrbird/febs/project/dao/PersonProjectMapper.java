package cc.mrbird.febs.project.dao;

import cc.mrbird.febs.project.domain.PersonProject;
import cc.mrbird.febs.project.domain.ProjectContact;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

public interface PersonProjectMapper extends BaseMapper<PersonProject> {

    IPage<PersonProject> findPersonProjectDetail(Page page, @Param("personProject") PersonProject personProject);

}