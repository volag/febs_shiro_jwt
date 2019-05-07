package cc.mrbird.febs.system.domain;

import cc.mrbird.febs.common.converter.TimeConverter;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;

@Data
@TableName("t_company")
@Excel("公司信息表")
public class Company implements Serializable {

    private static final long serialVersionUID = -7790334862410409053L;

    @TableId(value = "COMPANY_ID", type = IdType.AUTO)
    private Long companyId;

    @NotBlank(message = "{required}")
    @Size(max = 20, message = "{noMoreThan}")
    @ExcelField(value = "公司名称")
    private String companyName;

    @ExcelField(value = "公司头像")
    private String avatar;

    @ExcelField(value = "公司地址")
    private String companyAddress;

    @ExcelField(value = "融资情况")
    private String finance;

    @ExcelField(value = "公司规模")
    private String scale;

    @ExcelField(value = "公司性质")
    private String nature;

    @ExcelField(value = "公司行业")
    private String trade;

    @ExcelField(value = "公司介绍")
    private String info;

    @ExcelField(value = "公司标签1")
    private String tag1;

    @ExcelField(value = "公司标签2")
    private String tag2;

    @ExcelField(value = "公司标签3")
    private String tag3;

    @ExcelField(value = "创建时间", writeConverter = TimeConverter.class)
    private Date createTime;

    @ExcelField(value = "修改时间", writeConverter = TimeConverter.class)
    private Date modifyTime;

    private transient String createTimeFrom;

    private transient String createTimeTo;

}