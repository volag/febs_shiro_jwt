package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.Log;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.common.service.QnUploadService;
import cc.mrbird.febs.common.upload.FileMsg;
import cc.mrbird.febs.common.utils.MD5Util;
import cc.mrbird.febs.system.domain.User;
import cc.mrbird.febs.system.domain.UserConfig;
import cc.mrbird.febs.system.service.UserConfigService;
import cc.mrbird.febs.system.service.UserService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.wuwenze.poi.ExcelKit;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Slf4j
@Validated
@RestController
@RequestMapping("user")
public class UserController extends BaseController {

    private String message;

    @Autowired
    private UserService userService;
    @Autowired
    private UserConfigService userConfigService;
    @Autowired
    QnUploadService qnUploadService;

    @GetMapping("check/{username}")
    @ApiOperation(value = "检查用户名", notes = "通过用户名查询是否已经存在")
    public boolean checkUserName(@NotBlank(message = "{required}") @PathVariable String username) {
        return this.userService.findByName(username) == null;
    }

    @GetMapping("/{username}")
    @ApiOperation(value = "用户名查找用户信息")
    public User detail(@NotBlank(message = "{required}") @PathVariable String username) {
        return this.userService.findByName(username);
    }

    @GetMapping
    @RequiresPermissions("user:view")
    @ApiOperation(value = "用户信息查找用户")
    public Map<String, Object> userList(QueryRequest queryRequest, User user) {
        return getDataTable(userService.findUserDetail(user, queryRequest));
    }

    @Log("新增用户")
    @PostMapping
    @RequiresPermissions("user:add")
    @ApiOperation(value = "新增用户")
    public void addUser(@Valid User user) throws FebsException {
        try {
            this.userService.createUser(user);
        } catch (Exception e) {
            message = "新增用户失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改用户")
    @PutMapping
    @RequiresPermissions("user:update")
    @ApiOperation(value = "修改用户信息")
    public void updateUser(@Valid User user) throws FebsException {
        try {
            this.userService.updateUser(user);
        } catch (Exception e) {
            message = "修改用户失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除用户")
    @DeleteMapping("/{userIds}")
    @RequiresPermissions("user:delete")
    @ApiOperation(value = "删除用户")
    public void deleteUsers(@NotBlank(message = "{required}") @PathVariable String userIds) throws FebsException {
        try {
            String[] ids = userIds.split(StringPool.COMMA);
            this.userService.deleteUsers(ids);
        } catch (Exception e) {
            message = "删除用户失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @PutMapping("profile")
    @ApiOperation(value = "修改用户个人信息")
    public void updateProfile(@Valid User user) throws FebsException {
        try {
            this.userService.updateProfile(user);
        } catch (Exception e) {
            message = "修改个人信息失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @PutMapping("avatar")
    @ApiOperation(value = "更新用户头像")
    public void updateAvatar(
            @NotBlank(message = "{required}") String username,
            @NotBlank(message = "{required}") String avatar) throws FebsException {
        try {
            this.userService.updateAvatar(username, avatar);
        } catch (Exception e) {
            message = "修改头像失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @PostMapping("uploadAvatar")
    @ApiOperation(value = "上传用户头像")
    //使用MultipartFile 作为入参
    public FileMsg uploadAvatar(@RequestParam(name="file") MultipartFile file,
                                @NotBlank(message = "{required}") String username,
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
            this.userService.updateAvatar(username,remoteFileName);
            return fileMsg;
        }else {
            fileMsg.setStatus("false");
            return fileMsg;
        }
    }

    @PostMapping("uploadResume")
    @ApiOperation(value = "上传用户简历")
    //使用MultipartFile 作为入参
    public FileMsg uploadResume(@RequestParam(name="file") MultipartFile file,
                          @NotBlank(message = "{required}") String username,
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
            this.userService.updateResume(username,remoteFileName);
            return fileMsg;
        }else {
            fileMsg.setStatus("false");
            return fileMsg;
        }
    }

    @PutMapping("userconfig")
    @ApiOperation(value = "更新用户系统设置")
    public void updateUserConfig(@Valid UserConfig userConfig) throws FebsException {
        try {
            this.userConfigService.update(userConfig);
        } catch (Exception e) {
            message = "修改个性化配置失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @GetMapping("password/check")
    @ApiOperation(value = "检查密码")
    public boolean checkPassword(
            @NotBlank(message = "{required}") String username,
            @NotBlank(message = "{required}") String password) {
        String encryptPassword = MD5Util.encrypt(username, password);
        User user = userService.findByName(username);
        if (user != null)
            return StringUtils.equals(user.getPassword(), encryptPassword);
        else
            return false;
    }

    @PutMapping("password")
    @ApiOperation(value = "更新用户密码")
    public void updatePassword(
            @NotBlank(message = "{required}") String username,
            @NotBlank(message = "{required}") String password) throws FebsException {
        try {
            userService.updatePassword(username, password);
        } catch (Exception e) {
            message = "修改密码失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @PutMapping("password/reset")
    @RequiresPermissions("user:reset")
    @ApiOperation(value = "重置用户密码")
    public void resetPassword(@NotBlank(message = "{required}") String usernames) throws FebsException {
        try {
            String[] usernameArr = usernames.split(StringPool.COMMA);
            this.userService.resetPassword(usernameArr);
        } catch (Exception e) {
            message = "重置用户密码失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @PostMapping("excel")
    @RequiresPermissions("user:export")
    @ApiOperation(value = "导出用户信息")
    public void export(QueryRequest queryRequest, User user, HttpServletResponse response) throws FebsException {
        try {
            List<User> users = this.userService.findUserDetail(user, queryRequest).getRecords();
            ExcelKit.$Export(User.class, response).downXlsx(users, false);
        } catch (Exception e) {
            message = "导出Excel失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }
}
