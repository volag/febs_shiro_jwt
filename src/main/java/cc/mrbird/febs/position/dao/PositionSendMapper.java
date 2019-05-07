package cc.mrbird.febs.position.dao;

import cc.mrbird.febs.position.domain.PositionSend;
import cc.mrbird.febs.position.domain.PositionSend;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

public interface PositionSendMapper extends BaseMapper<PositionSend> {

    PositionSend findPositionSendDetail(@Param("positionSend") PositionSend positionSend);
    
}