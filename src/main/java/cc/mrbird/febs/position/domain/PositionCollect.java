package cc.mrbird.febs.position.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.wuwenze.poi.annotation.Excel;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@TableName("t_position_collect")
@Excel("职位表")
public class PositionCollect implements Serializable {

    private static final long serialVersionUID = -4852732617765810959L;

    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    private Long userId;

    private Long positionId;

    private Date collectTime;

}
