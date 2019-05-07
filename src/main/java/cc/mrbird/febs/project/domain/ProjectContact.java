package cc.mrbird.febs.project.domain;

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
@TableName("t_project_contact")
@Excel("项目联系表")
public class ProjectContact implements Serializable {

    private static final long serialVersionUID = -4852732617765810959L;

    @TableId(value = "PROJECT_CONTACT_ID", type = IdType.AUTO)
    private Long projectContactId;

    private Long personProjectId;

    @ExcelField(value = "联系类型")
    private String contactType;

    @ExcelField(value = "人才状态")
    private transient String personStatus;

    @ExcelField(value = "联系对象")
    private transient String personName;

    @ExcelField(value = "项目名称")
    private transient String projectName;

    @ExcelField(value = "项目状态")
    private transient String projectStatus;

    @ExcelField(value = "公司名称")
    private transient String companyName;

    @ExcelField(value = "联系方式")
    private transient String phone;

    @ExcelField(value = "创建人")
    private Long userId;

    @ExcelField(value = "创建时间", writeConverter = TimeConverter.class)
    private Date createTime;

    private Date modifyTime;

    private transient String createTimeFrom;
    private transient String createTimeTo;
}
