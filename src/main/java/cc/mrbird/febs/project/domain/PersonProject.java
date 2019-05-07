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
@TableName("t_person_project")
@Excel("人才项目表")
public class PersonProject implements Serializable {

    private static final long serialVersionUID = -4852732617765810959L;

    @TableId(value = "PERSON_PROJECT_ID", type = IdType.AUTO)
    private Long personProjectId;

    @ExcelField(value = "项目ID")
    private Long projectId;

    @ExcelField(value = "人才状态")
    private String personStatus;

    @ExcelField(value = "人才ID")
    private Long personId;

    @ExcelField(value = "猎聘评语标题")
    private String title;

    @ExcelField(value = "猎聘评语")
    private String description;

    @ExcelField(value = "创建人ID")
    private Long userId;

    @ExcelField(value = "创建时间", writeConverter = TimeConverter.class)
    private Date createTime;

    private Date modifyTime;

    @ExcelField(value = "联系对象")
    private transient String personName;

    @ExcelField(value = "联系电话")
    private transient String phone;

    @ExcelField(value = "项目名称")
    private transient String projectName;

    @ExcelField(value = "项目状态")
    private transient String projectStatus;

    @ExcelField(value = "项目收款状态")
    private transient String gatherStatus;

    @ExcelField(value = "公司名称")
    private transient String companyName;


    private transient String createTimeFrom;
    private transient String createTimeTo;
}
