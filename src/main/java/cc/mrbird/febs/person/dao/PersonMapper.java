package cc.mrbird.febs.person.dao;

import cc.mrbird.febs.person.domain.Person;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

public interface PersonMapper extends BaseMapper<Person> {

    IPage<Person> findPersonDetail(Page page, @Param("person") Person person);

}