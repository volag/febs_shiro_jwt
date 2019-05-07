package cc.mrbird.febs.position.service;

import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.position.domain.Position;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;


public interface PositionService extends IService<Position> {

    /**
     * 通过职位标题查找职位信息
     *
     * @param name name
     * @return position
     */
    Position findByName(String name);

    /**
     * 通过职位标题查找职位信息
     *
     * @param companyName companyName
     * @return position
     */
    List<Position> findByCompanyName(String companyName);


    /**
     * 查找收藏的职位信息
     *
     * @param userId userId
     * @return position
     */
    IPage<Position> findCollect(String userId, QueryRequest queryRequest);

    /**
     * 查找用户投递的职位信息
     *
     * @param userId userId
     * @return position
     */
    IPage<Position> findSend(String userId, QueryRequest queryRequest);

    /**
     * 查询职位详情，包括基本信息
     *
     * @param position position
     * @param queryRequest queryRequest
     * @return IPage
     */
    IPage<Position> findPositionDetail(Position position, QueryRequest queryRequest);


    /**
     * 查询职位详情，包括基本信息
     *
     * @param position position
     * @param queryRequest queryRequest
     * @return IPage
     */
    IPage<Position> findPositionCondition(Position position, QueryRequest queryRequest);

    /**
     * 更新职位发布时间
     *
     * @param issueTime issueTime
     */
    void updateIssueTime(String issueTime) throws Exception;

    /**
     * 新增职位
     *
     * @param position position
     */
    void createPosition(Position position) throws Exception;

    /**
     * 修改职位
     *
     * @param position position
     */
    void updatePosition(Position position) throws Exception;

    /**
     * 删除职位
     *
     * @param positionIds 职位 id数组
     */
    void deletePositions(String[] positionIds) throws Exception;

}
