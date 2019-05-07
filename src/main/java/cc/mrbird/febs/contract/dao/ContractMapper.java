package cc.mrbird.febs.contract.dao;

import cc.mrbird.febs.contract.domain.Contract;
import cc.mrbird.febs.project.domain.Project;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

public interface ContractMapper extends BaseMapper<Contract> {

    IPage<Contract> findContractDetail(Page page, @Param("contract") Contract contract);

}