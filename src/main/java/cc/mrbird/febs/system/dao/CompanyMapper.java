package cc.mrbird.febs.system.dao;

import cc.mrbird.febs.contract.domain.Contract;
import cc.mrbird.febs.system.domain.Company;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

public interface CompanyMapper extends BaseMapper<Company> {

    IPage<Company> findCompanyDetail(Page page, @Param("company") Company company);
}