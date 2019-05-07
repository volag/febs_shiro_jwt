package cc.mrbird.febs.project.domain;

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
@TableName("t_project")
@Excel("项目表")
public class Project implements Serializable {

    private static final long serialVersionUID = -4852732617765810959L;

    @TableId(value = "PROJECT_ID", type = IdType.AUTO)
    private Long projectId;

    @Size(min = 4, max = 20, message = "{range}")
    @ExcelField(value = "项目名称")
    private String projectName;

    @ExcelField(value = "项目编号")
    private String projectCode;

    @ExcelField(value = "开始日期", readConverter = StringConverter.class)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startTime;

    @ExcelField(value = "计划完成日期",readConverter = StringConverter.class)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date planFinishTime;

    @ExcelField(value = "项目状态")
    private String projectStatus;

    @ExcelField(value = "优先级别")
    private String priorityLevel;

    @ExcelField(value = "客户名称")
    private String companyName;

    @ExcelField(value = "收款状态")
    private String gatherStatus;

    @ExcelField(value = "客户经理")
    private String customerManager;

    @ExcelField(value = "业务人员")
    private String businessPerson;

    @ExcelField(value = "项目主管")
    private String projectCharge;

    @ExcelField(value = "项目顾问")
    private String projectCounselor;

    @ExcelField(value = "客户联系人")
    private String companyContact;

    @ExcelField(value = "寻访员")
    private String searchPerson;

    @ExcelField(value = "客户付款人")
    private String companyPayer;

    @ExcelField(value = "公司简介")
    private String companyInfo;

    @ExcelField(value = "汇报对象")
    private String reportObject;

    @ExcelField(value = "下属职位")
    private String subordinatePosition;

    @ExcelField(value = "工作地点")
    private String workAddress;

    @ExcelField(value = "招聘人数")
    private String number;

    @ExcelField(value = "行业")
    private String trade;

    @ExcelField(value = "适合职能")
    private String suitableFunction;

    @ExcelField(value = "外语要求")
    private String languageRequire;

    @ExcelField(value = "性别要求")
    private String sexRequire;

    @ExcelField(value = "职位级别")
    private String positionLevel;

    @ExcelField(value = "职位类型")
    private String positionSort;

    @ExcelField(value = "年龄要求")
    private String ageRequire;

    @ExcelField(value = "职位描述")
    private String positionInfo;

    @ExcelField(value = "职位开发原因")
    private String positionReason;

    @ExcelField(value = "薪资范围")
    private String salaryRange;

    @ExcelField(value = "奖金")
    private String bonus;

    @ExcelField(value = "福利")
    private String welfare;

    @ExcelField(value = "委托前进展")
    private String progress;

    @ExcelField(value = "执行分析")
    private String executionAnalyze;

    @ExcelField(value = "创建人")
    private Long userId;

    @ExcelField(value = "创建时间", readConverter = StringConverter.class)
    private Date createTime;

    private Date modifyTime;

    private transient String createTimeFrom;
    private transient String createTimeTo;

    private transient String startTimeFrom;
    private transient String startTimeTo;

    private transient String planFinishTimeFrom;
    private transient String planFinishTimeTo;
}
