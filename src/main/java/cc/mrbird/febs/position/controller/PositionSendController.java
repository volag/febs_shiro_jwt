package cc.mrbird.febs.position.controller;

import cc.mrbird.febs.common.annotation.Log;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.position.domain.PositionSend;
import cc.mrbird.febs.position.domain.PositionSend;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

@Slf4j
@Validated
@RestController
@RequestMapping("positionSend")
public class PositionSendController extends BaseController {

    private String message;

    @Autowired
    private cc.mrbird.febs.position.service.PositionSendService PositionSendService;


    @GetMapping
    @RequiresPermissions("position:view")
    @ApiOperation(value = "查询投递的职位")
    public Boolean PositionList(QueryRequest request, PositionSend positionSend) {
        log.info(positionSend.toString());
        return this.PositionSendService.findPositionSend(request,positionSend) == null;
    }
    
    @Log("投递职位")
    @ApiOperation(value = "投递职位")
    @PostMapping
    public void addPositionSend(@Valid PositionSend positionSend) throws FebsException {
        try {
            this.PositionSendService.createPositionSend(positionSend);
            log.info("新增职位："+positionSend.toString());
        } catch (Exception e) {
            message = "新增职位成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除投递的职位")
    @DeleteMapping("/{positionSendIds}")
    @ApiOperation(value = "取消投递")
    public void deletePositionSends(@NotBlank(message = "{required}") @PathVariable String positionSendIds) throws FebsException {
        try {
            String[] ids = positionSendIds.split(StringPool.COMMA);
            this.PositionSendService.deletePositionSends(ids);
        } catch (Exception e) {
            message = "删除职位成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改职位信息")
    @PutMapping
    public void updatePositionSend(@Valid PositionSend positionSend) throws FebsException {
        try {
            this.PositionSendService.updatePositionSend(positionSend);
        } catch (Exception e) {
            message = "修改职位信息成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

}
