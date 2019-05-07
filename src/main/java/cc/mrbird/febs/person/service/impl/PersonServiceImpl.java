package cc.mrbird.febs.person.service.impl;

import cc.mrbird.febs.common.domain.FebsConstant;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.person.dao.PersonMapper;
import cc.mrbird.febs.person.domain.Person;
import cc.mrbird.febs.person.service.PersonService;
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
@Service("personService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class PersonServiceImpl extends ServiceImpl<PersonMapper, Person> implements PersonService {

    @Override
    public IPage<Person> findPersonDetail(Person person, QueryRequest request) {
        try {
            Page<Person> page = new Page<>();
            SortUtil.handlePageSort(request, page, "person_id", FebsConstant.ORDER_ASC, false);
            return this.baseMapper.findPersonDetail(page,person);
        } catch (Exception e) {
            log.error("查询职位异常", e);
            return null;
        }
    }

    @Override
    @Transactional
    public void createPerson(Person person) throws Exception {
        // 创建职位
        person.setCreateTime(new Date());
        save(person);
    }

    @Override
    public void createPersons(List<Person> list) throws Exception {
        for (int i = 0; i < list.size(); i++) {
            list.get(i).setCreateTime(new Date());
            save(list.get(i));
        }
    }

    @Override
    @Transactional
    public void updatePerson(Person person) throws Exception {
        // 更新职位
        person.setModifyTime(new Date());
        updateById(person);

    }

    @Override
    @Transactional
    public void deletePersons(String[] personIds) throws Exception {

        List<String> list = Arrays.asList(personIds);

        removeByIds(list);
    }

}
