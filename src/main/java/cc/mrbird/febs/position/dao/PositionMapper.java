package cc.mrbird.febs.position.dao;

import cc.mrbird.febs.position.domain.Position;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

public interface PositionMapper extends BaseMapper<Position> {

    IPage<Position> findPositionDetail(Page page, @Param("position") Position position);

    IPage<Position> findPositionCondition(Page page, @Param("position") Position position);

    IPage<Position> findCollect(Page page, @Param("userId") String userId);

    IPage<Position> findSend(Page page, @Param("userId") String userId);
}