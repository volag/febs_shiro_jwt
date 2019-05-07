package cc.mrbird.febs.system.service;


import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.contract.domain.Contract;
import cc.mrbird.febs.project.domain.Project;
import cc.mrbird.febs.system.domain.Company;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

public interface CompanyService extends IService<Company> {

    IPage<Company> findCompanyDetail(Company company, QueryRequest queryRequest);

    List<Company> findCompanies(Company company, QueryRequest request);

    Company findCompany(String companyName);

    void updateAvatar(String companyId,String avatar) throws Exception;

    void createCompany(Company company);

    void createCompanies(List<Company> list) throws Exception;

    void updateCompany(Company company);

    void deleteCompanies(String[] companyIds);
}
