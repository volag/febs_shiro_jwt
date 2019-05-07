package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.domain.FebsConstant;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.domain.Tree;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.common.utils.TreeUtil;
import cc.mrbird.febs.contract.domain.Contract;
import cc.mrbird.febs.project.domain.Project;
import cc.mrbird.febs.resume.domain.Resume;
import cc.mrbird.febs.system.dao.CompanyMapper;
import cc.mrbird.febs.system.domain.Company;
import cc.mrbird.febs.system.service.CompanyService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Slf4j
@Service("companyService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class CompanyServiceImpl extends ServiceImpl<CompanyMapper, Company> implements CompanyService {


    @Override
    public IPage<Company> findCompanyDetail(Company company, QueryRequest request) {
        try {
            Page<Company> page = new Page<>();
            SortUtil.handlePageSort(request, page, "COMPANY_ID", FebsConstant.ORDER_ASC, false);
            return this.baseMapper.findCompanyDetail(page,company);
        } catch (Exception e) {
            log.error("查询职位异常", e);
            return null;
        }
    }

    @Override
    public List<Company> findCompanies(Company company, QueryRequest request) {
        QueryWrapper<Company> queryWrapper = new QueryWrapper<>();

        if (StringUtils.isNotBlank(company.getCompanyName()))
            queryWrapper.lambda().eq(Company::getCompanyName, company.getCompanyName());
        if (StringUtils.isNotBlank(company.getCreateTimeFrom()) && StringUtils.isNotBlank(company.getCreateTimeTo()))
            queryWrapper.lambda()
                    .ge(Company::getCreateTime, company.getCreateTimeFrom())
                    .le(Company::getCreateTime, company.getCreateTimeTo());
        SortUtil.handleWrapperSort(request, queryWrapper, "companyId", FebsConstant.ORDER_ASC, true);
        return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public Company findCompany(String companyName) {
        return baseMapper.selectOne(new LambdaQueryWrapper<Company>().eq(Company::getCompanyName, companyName));
    }

    @Override
    @Transactional
    public void updateAvatar(String companyId, String avatar) throws Exception {
        Company company = new Company();
        company.setCompanyId(Long.parseLong(companyId));
        company.setAvatar(avatar);
        updateById(company);
    }

    @Override
    @Transactional
    public void createCompany(Company company) {
        company.setCreateTime(new Date());
        this.save(company);
    }

    @Override
    @Transactional
    public void createCompanies(List<Company> list) throws Exception {
        for (int i = 0; i < list.size(); i++) {
            list.get(i).setCreateTime(new Date());
            save(list.get(i));
        }
    }

    @Override
    @Transactional
    public void updateCompany(Company company) {
        company.setModifyTime(new Date());
        this.baseMapper.updateById(company);
    }

    @Override
    @Transactional
    public void deleteCompanies(String[] companyIds) {
        Arrays.stream(companyIds).forEach(companyId -> this.baseMapper.deleteById(companyId));
    }

}
