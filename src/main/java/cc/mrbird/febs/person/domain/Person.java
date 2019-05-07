package cc.mrbird.febs.person.domain;

import cc.mrbird.febs.common.converter.StringConverter;
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
@TableName("t_person")
@Excel("人才表")
public class Person implements Serializable {

    private static final long serialVersionUID = -4852732617765810959L;

    @TableId(value = "PERSON_ID", type = IdType.AUTO)
    private Long personId;

    @Size(min = 2, max = 5, message = "{range}")
    @ExcelField(value = "人才名称")
    private String personName;

    @ExcelField(value = "人才性别")
    private String personSex;

    @ExcelField(value = "人才类别")
    private String personSort;

    @ExcelField(value = "人才级别")
    private String personLevel;

    @ExcelField(value = "出生日期",readConverter = StringConverter.class)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;

    @ExcelField(value = "工作年限")
    private String workYears;

    @ExcelField(value = "毕业时间",readConverter = StringConverter.class)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date graduateTime;

    @ExcelField(value = "毕业院校")
    private String graduateInstitutions;

    @ExcelField(value = "专业")
    private String major;

    @ExcelField(value = "学历")
    private String educationBackground;

    @ExcelField(value = "电子邮件")
    private String email;

    @ExcelField(value = "手机号码")
    private String mobilePhone;

    @ExcelField(value = "办公电话")
    private String workPhone;

    @ExcelField(value = "家庭电话")
    private String familyPhone;

    @ExcelField(value = "身份证号")
    private String identityCard;

    @ExcelField(value = "国籍")
    private String nationality;

    @ExcelField(value = "民族")
    private String nation;

    @ExcelField(value = "身高")
    private String height;

    @ExcelField(value = "体重")
    private String weight;

    @ExcelField(value = "户口")
    private String account;

    @ExcelField(value = "婚姻状况")
    private String maritalStatus;

    @ExcelField(value = "籍贯")
    private String nativePlace;

    @ExcelField(value = "现在居住地")
    private String currentAddress;

    @ExcelField(value = "现任公司")
    private String companyName;

    @ExcelField(value = "职位")
    private String positionName;

    @ExcelField(value = "目前薪资")
    private Double currentSalary;

    @ExcelField(value = "任职年限")
    private String officeTerm;

    @ExcelField(value = "自我评价")
    private String selfAssessment;

    @ExcelField(value = "工作经历")
    private String workExperience;

    @ExcelField(value = "项目经验")
    private String projectExperience;

    @ExcelField(value = "教育经历")
    private String educationRecord;

    @ExcelField(value = "培训经历")
    private String trainRecord;

    @ExcelField(value = "语言能力")
    private String languageSkill;

    @ExcelField(value = "计算机")
    private String computer;

    @ExcelField(value = "相关技能")
    private String relatedSkill;

    @ExcelField(value = "备注")
    private String content;

    @ExcelField(value = "简历路径")
    private String resume;

    @ExcelField(value = "创建人")
    private String userId;

    @ExcelField(value = "创建时间",readConverter = StringConverter.class)
    private Date createTime;

    private Date modifyTime;

    private transient String createTimeFrom;
    private transient String createTimeTo;
}
