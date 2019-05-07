package cc.mrbird.febs.position.service;

import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.position.domain.PositionCollect;
import cc.mrbird.febs.system.domain.Dict;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;


public interface PositionCollectService extends IService<PositionCollect> {

    /**
     * 通过用户id查找用户收藏的职位信息
     *
     * @param request
     * @param positionCollect
     * @return
     */
    PositionCollect findPositionCollect(QueryRequest request, PositionCollect positionCollect);

    /**
     * 用户收藏职位创建
     *
     * @param positionCollect
     */
    void createPositionCollect(PositionCollect positionCollect);

    /**
     *
     * @param positionCollect
     */
    void updatePositionCollect(PositionCollect positionCollect);

    /**
     * 用户取消收藏
     *
     * @param positionCollectIds
     */
    void deletePositionCollects(String[] positionCollectIds);

}
