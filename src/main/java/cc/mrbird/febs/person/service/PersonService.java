package cc.mrbird.febs.person.service;

import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.person.domain.Person;
import cc.mrbird.febs.position.domain.Position;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;


public interface PersonService extends IService<Person> {

    /**
     * 查询人才详情，包括基本信息
     *
     * @param person person
     * @param queryRequest queryRequest
     * @return IPage
     */
    IPage<Person> findPersonDetail(Person person, QueryRequest queryRequest);

    /**
     * 新增人才
     *
     * @param person person
     */
    void createPerson(Person person) throws Exception;

    /**
     * 批量新增人才数据
     *
     * @param list
     * @throws Exception
     */
    void createPersons(List<Person> list) throws Exception;

    /**
     * 修改人才
     *
     * @param person person
     */
    void updatePerson(Person person) throws Exception;

    /**
     * 删除
     *
     * @param personIds 人才 id数组
     */
    void deletePersons(String[] personIds) throws Exception;

}
