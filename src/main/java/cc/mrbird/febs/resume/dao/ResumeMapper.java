package cc.mrbird.febs.resume.dao;

import cc.mrbird.febs.resume.domain.Resume;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

public interface ResumeMapper extends BaseMapper<Resume> {

    IPage<Resume> findResumeDetail(Page page, @Param("resume") Resume Resume);
}