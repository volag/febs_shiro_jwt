package cc.mrbird.febs.contract.service.impl;

import cc.mrbird.febs.common.domain.FebsConstant;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.contract.dao.ContractMapper;
import cc.mrbird.febs.contract.domain.Contract;
import cc.mrbird.febs.contract.service.ContractService;
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
@Service("contractService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class ContractServiceImpl extends ServiceImpl<ContractMapper, Contract> implements ContractService {

    @Override
    public IPage<Contract> findContractDetail(Contract contract, QueryRequest request) {
        try {
            Page<Contract> page = new Page<>();
            SortUtil.handlePageSort(request, page, "CONTRACT_ID", FebsConstant.ORDER_ASC, false);
            return this.baseMapper.findContractDetail(page,contract);
        } catch (Exception e) {
            log.error("查询职位异常", e);
            return null;
        }
    }

    @Override
    @Transactional
    public void createContract(Contract contract) throws Exception {
        // 创建职位
        contract.setCreateTime(new Date());
        save(contract);
    }

    @Override
    @Transactional
    public void updateContract(Contract contract) throws Exception {
        // 更新职位
        contract.setModifyTime(new Date());
        updateById(contract);

    }

    @Override
    @Transactional
    public void deleteContracts(String[] contractIds) throws Exception {

        List<String> list = Arrays.asList(contractIds);

        removeByIds(list);
    }

}
