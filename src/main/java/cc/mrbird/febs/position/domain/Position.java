package cc.mrbird.febs.position.domain;

import cc.mrbird.febs.common.converter.TimeConverter;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;

@Data
@TableName("t_position")
@Excel("职位表")
public class Position implements Serializable {

    private static final long serialVersionUID = -4852732617765810959L;

    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    @Size(min = 4, max = 15, message = "{range}")
    @ExcelField(value = "职位标题")
    private String positionName;

    @Size(max = 100, message = "{noMoreThan}")
    @ExcelField(value = "招聘地址")
    private String address;

    @ExcelField(value = "学历要求")
    private  String needEducation;

    @ExcelField(value = "职位类型")
    private  String positionSort;

    @ExcelField(value = "薪资")
    private  String salary;

    @ExcelField(value = "发布的公司")
    private String issueCompany;

    @ExcelField(value = "发布时间", writeConverter = TimeConverter.class)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date issueTime;

    @ExcelField(value = "工作经验")
    private String needWorkTime;

    @Size(max = 100, message = "{noMoreThan}")
    @ExcelField(value = "职位描述")
    private String description;

    @Size(max = 100, message = "{noMoreThan}")
    @ExcelField(value = "职责要求")
    private String requested;

    private Long userId;

    private transient String trade;

    private transient String scale;

    private transient String nature;

    private transient Long collectId;

    private transient Long sendId;

    // 排序字段
    private transient String sortField;

    // 排序规则 ascend 升序 descend 降序
    private transient String sortOrder;

    private transient String createTimeFrom;
    private transient String createTimeTo;


}
