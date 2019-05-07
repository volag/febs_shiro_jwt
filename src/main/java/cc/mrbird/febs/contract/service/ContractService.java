package cc.mrbird.febs.contract.service;

import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.contract.domain.Contract;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;


public interface ContractService extends IService<Contract> {

    /**
     * 查询职位详情，包括基本信息
     *
     * @param contract contract
     * @param queryRequest queryRequest
     * @return IPage
     */
    IPage<Contract> findContractDetail(Contract contract, QueryRequest queryRequest);

    /**
     * 新增职位
     *
     * @param contract contract
     */
    void createContract(Contract contract) throws Exception;

    /**
     * 修改职位
     *
     * @param contract contract
     */
    void updateContract(Contract contract) throws Exception;

    /**
     * 删除
     *
     * @param contractIds 职位 id数组
     */
    void deleteContracts(String[] contractIds) throws Exception;

}
