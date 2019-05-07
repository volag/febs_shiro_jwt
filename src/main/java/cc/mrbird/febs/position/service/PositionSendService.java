package cc.mrbird.febs.position.service;

import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.position.domain.PositionCollect;
import cc.mrbird.febs.position.domain.PositionSend;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;


public interface PositionSendService extends IService<PositionSend> {

    /**
     * 通过用户id查找用户投递的职位信息
     *
     * @param request
     * @param positionSend
     * @return
     */
    PositionSend findPositionSend(QueryRequest request, PositionSend positionSend);

    /**
     * 用户投递职位创建
     *
     * @param positionSend
     */
    void createPositionSend(PositionSend positionSend);

    /**
     *
     * @param positionSend
     */
    void updatePositionSend(PositionSend positionSend);

    /**
     * 用户取消投递
     *
     * @param positionSendIds
     */
    void deletePositionSends(String[] positionSendIds);

}
