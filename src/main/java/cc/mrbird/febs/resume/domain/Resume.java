package cc.mrbird.febs.resume.domain;

import cc.mrbird.febs.common.converter.TimeConverter;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@TableName("t_resume")
@Excel("简历表")
public class Resume implements Serializable {

    public static final String DEFAULT_AVATAR = "default.jpg";

    private static final long serialVersionUID = -4852732617765810959L;
    
    @TableId(value = "RESUME_ID", type = IdType.AUTO)
    private Long resumeId;

    @ExcelField(value = "用户ID")
    private Long userId;

    @ExcelField(value = "简历头像")
    private String photo;

    @ExcelField(value = "职业")
    private String profession;

    @ExcelField(value = "用户地址")
    private String userAddress;

    @ExcelField(value = "自我评价")
    private String selfAssessment;

    @ExcelField(value = "用户状态")
    private String status;

    @ExcelField(value = "户口")
    private String account;

    @ExcelField(value = "学校名称")
    private String schoolName;

    @ExcelField(value = "专业名称")
    private String majorName;

    @ExcelField(value = "就读时间从", writeConverter = TimeConverter.class)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date studyStart;

    @ExcelField(value = "就读时间至", writeConverter = TimeConverter.class)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date studyEnd;

    @ExcelField(value = "学历")
    private String education;

    @ExcelField(value = "是否统招")
    private String recruitmentFlag;

    @ExcelField(value = "公司名称")
    private String userCompany;

    @ExcelField(value = "公司行业")
    private String companyTrade;

    @ExcelField(value = "职位名称")
    private String positionName;

    @ExcelField(value = "工作地点")
    private String companyAddress;

    @ExcelField(value = "下属人数")
    private Integer underNumber;

    @ExcelField(value = "任职时间从", writeConverter = TimeConverter.class)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date employmentPeriodFrom;

    @ExcelField(value = "任职时间到", writeConverter = TimeConverter.class)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date employmentPeriodTo;

    @ExcelField(value = "职责业绩")
    private String jobPerformance;

    @ExcelField(value = "所在部门")
    private String department;

    @ExcelField(value = "公司性质")
    private String companyNature;

    @ExcelField(value = "公司规模")
    private String companyScale;

    @ExcelField(value = "公司简介")
    private String companyIntro;

    @ExcelField(value = "月薪")
    private Double monthlyPayNumber;

    @ExcelField(value = "月薪数")
    private Integer monthlyPay;

    @ExcelField(value = "附加信息")
    private String addInformation;

    @ExcelField(value = "标签名")
    private String labelName;

    @ExcelField(value = "语言")
    private String language;

    @ExcelField(value = "熟练程度")
    private String proficiency;

    @ExcelField(value = "等级")
    private String grade;

    @ExcelField(value = "项目名称")
    private String projectName;

    @ExcelField(value = "公司名称")
    private String companyName;

    @ExcelField(value = "工作时间从", writeConverter = TimeConverter.class)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date timeStart;

    @ExcelField(value = "工作时间至", writeConverter = TimeConverter.class)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date timeEnd;

    @ExcelField(value = "项目描述")
    private String description;

    @ExcelField(value = "项目职责")
    private String duty;

    @ExcelField(value = "项目业绩")
    private String performance;

    @ExcelField(value = "附件地址")
    private String resumeName;

    @ExcelField(value = "期望行业")
    private String trade;

    @ExcelField(value = "期望职能")
    private String functional;

    @ExcelField(value = "期望工作地点")
    private String workAddress;

    @ExcelField(value = "期望薪资")
    private Double annualSalary;

    @ExcelField(value = "当前薪资")
    private Double currentSalary;

}
