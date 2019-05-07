package cc.mrbird.febs.contract.domain;

import cc.mrbird.febs.common.converter.TimeConverter;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;

import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;

@Data
@TableName("t_contract")
@Excel("合同表")
public class Contract implements Serializable {

    private static final long serialVersionUID = -4852732617765810959L;

    @TableId(value = "CONTRACT_ID", type = IdType.AUTO)
    private Long contractId;

    @Size(min = 4, max = 20, message = "{range}")
    @ExcelField(value = "合同名称")
    private String contractName;

    @ExcelField(value = "合同编号")
    private String contractCode;

    @ExcelField(value = "开始日期", writeConverter = TimeConverter.class)
    private Date startTime;

    @ExcelField(value = "完成日期", writeConverter = TimeConverter.class)
    private Date finishTime;

    @ExcelField(value = "开票日期", writeConverter = TimeConverter.class)
    private Date makeInvoiceTime;

    @ExcelField(value = "支付方式")
    private String payWay;

    @ExcelField(value = "公司签约人")
    private String companySigned;

    @ExcelField(value = "客户签约人")
    private String customerSigned;

    @ExcelField(value = "签约时间", writeConverter = TimeConverter.class)
    private Date signedTime;

    @ExcelField(value = "签约地点")
    private String signedAddress;

    @ExcelField(value = "存放地点")
    private String storeAddress;

    @ExcelField(value = "归档日期")
    private Date fillTime;

    @ExcelField(value = "金额")
    private Double money;

    @ExcelField(value = "执行状态")
    private String executeStatus;

    @ExcelField(value = "合同内容")
    private String contractInfo;

    @ExcelField(value = "对应订单")
    private String orderNumber;

    @ExcelField(value = "备注")
    private String info;

    @ExcelField(value = "创建人")
    private Long userId;

    @ExcelField(value = "创建时间", writeConverter = TimeConverter.class)
    private Date createTime;

    private Date modifyTime;

    private transient String createTimeFrom;
    private transient String createTimeTo;

    private transient String signedTimeFrom;
    private transient String signedTimeTo;
}
