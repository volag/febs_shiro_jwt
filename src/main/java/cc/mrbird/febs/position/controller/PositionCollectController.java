package cc.mrbird.febs.position.controller;

import cc.mrbird.febs.common.annotation.Log;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.position.domain.PositionCollect;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
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
@RequestMapping("positionCollect")
public class PositionCollectController extends BaseController {

    private String message;

    @Autowired
    private cc.mrbird.febs.position.service.PositionCollectService PositionCollectService;

    @GetMapping
    @RequiresPermissions("position:view")
    public Boolean PositionList(QueryRequest request, PositionCollect positionCollect) {

        return this.PositionCollectService.findPositionCollect(request,positionCollect) == null;
    }

    @Log("收藏职位")
    @PostMapping
    public void addPositionCollect(@Valid PositionCollect positionCollect) throws FebsException {
        try {
            this.PositionCollectService.createPositionCollect(positionCollect);
            log.info("新增职位："+positionCollect.toString());
        } catch (Exception e) {
            message = "新增职位成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除收藏的职位")
    @DeleteMapping("/{positionCollectIds}")
    public void deletePositionCollects(@NotBlank(message = "{required}") @PathVariable String positionCollectIds) throws FebsException {
        try {
            String[] ids = positionCollectIds.split(StringPool.COMMA);
            this.PositionCollectService.deletePositionCollects(ids);
        } catch (Exception e) {
            message = "删除职位成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改职位信息")
    @PutMapping
    public void updatePositionCollect(@Valid PositionCollect positionCollect) throws FebsException {
        try {
            this.PositionCollectService.updatePositionCollect(positionCollect);
        } catch (Exception e) {
            message = "修改职位信息成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

}
