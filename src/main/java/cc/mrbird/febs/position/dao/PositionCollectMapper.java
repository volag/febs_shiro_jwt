package cc.mrbird.febs.position.dao;

import cc.mrbird.febs.position.domain.Position;
import cc.mrbird.febs.position.domain.PositionCollect;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

public interface PositionCollectMapper extends BaseMapper<PositionCollect> {

    PositionCollect findPositionCollectDetail(@Param("positionCollect") PositionCollect positionCollect);

}