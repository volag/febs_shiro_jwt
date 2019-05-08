package cc.mrbird.febs.resume.controller;

import cc.mrbird.febs.common.annotation.Log;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.common.service.QnUploadService;
import cc.mrbird.febs.common.upload.FileMsg;
import cc.mrbird.febs.resume.domain.Resume;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.Map;
import java.util.UUID;

@Slf4j
@Validated
@RestController
@RequestMapping("resume")
public class ResumeController extends BaseController {

    private String message;

    @Autowired
    QnUploadService qnUploadService;

    @Autowired
    private cc.mrbird.febs.resume.service.ResumeService resumeService;

    @GetMapping
    public Map<String, Object> ResumeList(QueryRequest queryRequest, Resume resume) {
        return getDataTable(resumeService.findResumeDetail(resume, queryRequest));
    }

    @Log("增加简历")
    @PostMapping
    @ApiOperation(value = "增加简历")
    public void addResume(@Valid Resume resume) throws FebsException {
        try {
            this.resumeService.createResume(resume);
            log.info("新增简历："+resume.toString());
        } catch (Exception e) {
            message = "新增简历成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }


    @PostMapping("uploadAvatar")
    @ApiOperation(value = "上传简历头像")
    //使用MultipartFile 作为入参
    public FileMsg uploadAvatar(@RequestParam(name="file") MultipartFile file,
                                @NotBlank(message = "{required}") String resumeId,
                                @NotBlank(message = "{required}") String key) throws Exception {
        // 包含原始文件名的字符串
        String fi = file.getOriginalFilename();
        // 提取文件拓展名
        String fileNameExtension = fi.substring(fi.indexOf("."), fi.length());
        // 生成云端的真实文件名
        String remoteFileName = UUID.randomUUID().toString() + fileNameExtension;

        Boolean flag = qnUploadService.upload(file.getBytes(), remoteFileName,key);

        FileMsg fileMsg = new FileMsg();
        fileMsg.setFilename(remoteFileName);

        if(flag){
            fileMsg.setStatus("success");
            this.resumeService.updateAvatar(resumeId,remoteFileName);
            return fileMsg;
        }else {
            fileMsg.setStatus("false");
            return fileMsg;
        }
    }

    @Log("删除简历")
    @DeleteMapping("/{resumeIds}")
    @ApiOperation(value = "删除简历")
    public void deleteResumes(@NotBlank(message = "{required}") @PathVariable String id) throws FebsException {
        try {
            this.resumeService.deleteResume(id);
        } catch (Exception e) {
            message = "删除简历成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改简历信息")
    @ApiOperation(value = "修改简历信息")
    @PutMapping
    public void updateResume(@Valid Resume resume) throws FebsException {
        try {
            this.resumeService.updateResume(resume);
        } catch (Exception e) {
            message = "修改简历信息成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

}
