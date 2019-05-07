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
@TableName("t_trade")
@Excel("行业方向种类表")
public class Trade implements Serializable {

    private static final long serialVersionUID = -4852732617765810959L;

    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    @Size(min = 4, max = 20, message = "{range}")
    @ExcelField(value = "行业名称")
    private String tradeName;

    @Size(max = 20, message = "{noMoreThan}")
    @ExcelField(value = "行业代码")
    private String tradeCode;

}
