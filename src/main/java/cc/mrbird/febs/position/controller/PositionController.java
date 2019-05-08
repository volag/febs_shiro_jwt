package cc.mrbird.febs.position.controller;

import cc.mrbird.febs.common.annotation.Log;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.position.domain.Position;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.wuwenze.poi.ExcelKit;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Map;

@Slf4j
@Validated
@RestController
@RequestMapping("position")
public class PositionController extends BaseController {

    private String message;

    @Autowired
    private cc.mrbird.febs.position.service.PositionService positionService;

    @GetMapping
    @RequiresPermissions("position:view")
    @ApiOperation(value = "查询职位信息")
    public Map<String, Object> PositionList(QueryRequest request, Position position) {
        return getDataTable(this.positionService.findPositionDetail(position, request));
    }

    @PostMapping(value = "/condition")
    @RequiresPermissions("position:view")
    @ApiOperation(value = "条件查询职位信息")
    public Map<String, Object> PositionListCondition(QueryRequest request, Position position) {
        return getDataTable(this.positionService.findPositionCondition(position, request));
    }

    @Log("查找公司发布的职位")
    @GetMapping("/{companyName}")
    @RequiresPermissions("position:view")
    @ApiOperation(value = "查找公司发布的职位")
    public List<Position> findPosition(@NotBlank(message = "{required}") @PathVariable String companyName) throws FebsException {
        try {
            return this.positionService.findByCompanyName(companyName);
        } catch (Exception e) {
            message = "删除部门失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @GetMapping(value = "/collect")
    @RequiresPermissions("position:view")
    @ApiOperation(value = "查询收藏的职位")
    public Map<String, Object> PositionCollectList(QueryRequest request, String userId) {
        return getDataTable(this.positionService.findCollect(userId, request));
    }

    @GetMapping(value = "/send")
    @ApiOperation(value = "查询投递的职位")
    @RequiresPermissions("position:view")
    public Map<String, Object> PositionSendList(QueryRequest request, String userId) {
        return getDataTable(this.positionService.findSend(userId, request));
    }

    @Log("新增职位")
    @PostMapping
    @RequiresPermissions("position:add")
    @ApiOperation(value = "新增职位")
    public void addPosition(@Valid Position position) throws FebsException {
        try {
            this.positionService.createPosition(position);
            log.info("新增职位："+position.toString());
        } catch (Exception e) {
            message = "新增职位成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("删除职位")
    @DeleteMapping("/{positionIds}")
    @RequiresPermissions("position:delete")
    @ApiOperation(value = "删除职位")
    public void deletePositions(@NotBlank(message = "{required}") @PathVariable String positionIds) throws FebsException {
        try {
            String[] ids = positionIds.split(StringPool.COMMA);
            this.positionService.deletePositions(ids);
        } catch (Exception e) {
            message = "删除职位成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @Log("修改职位信息")
    @PutMapping
    @RequiresPermissions("position:update")
    @ApiOperation(value = "修改职位信息")
    public void updatePosition(@Valid Position position) throws FebsException {
        try {
            this.positionService.updatePosition(position);
        } catch (Exception e) {
            message = "修改职位信息成功";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

    @PostMapping("excel")
    @RequiresPermissions("position:export")
    @ApiOperation(value = "导出职位信息")
    public void export(QueryRequest queryRequest, Position position, HttpServletResponse response) throws FebsException {
        try {
            List<Position> Positions = this.positionService.findPositionDetail(position, queryRequest).getRecords();
            ExcelKit.$Export(Position.class, response).downXlsx(Positions, false);
        } catch (Exception e) {
            message = "导出Excel失败";
            log.error(message, e);
            throw new FebsException(message);
        }
    }

}
