package cc.mrbird.febs.trade.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;

import javax.validation.constraints.Size;
import java.io.Serializable;

@Data
@TableName("t_trade_kind")
@Excel("行业方向种类表")
public class TradeKind implements Serializable {

    private static final long serialVersionUID = -4852732617765810959L;

    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    private Long directionId;

    @Size(min = 4, max = 20, message = "{range}")
    @ExcelField(value = "方向种类名称")
    private String kindName;

    @Size(max = 20, message = "{noMoreThan}")
    @ExcelField(value = "方向种类代码")
    private String kindCode;

}
