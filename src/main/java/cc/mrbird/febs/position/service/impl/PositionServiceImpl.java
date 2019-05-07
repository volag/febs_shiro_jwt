package cc.mrbird.febs.position.service.impl;

import cc.mrbird.febs.common.domain.FebsConstant;
import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.position.dao.PositionMapper;
import cc.mrbird.febs.position.domain.Position;
import cc.mrbird.febs.position.service.PositionService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Slf4j
@Service("positionService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class PositionServiceImpl extends ServiceImpl<PositionMapper, Position> implements PositionService {


    @Override
    public Position findByName(String name) {
        return baseMapper.selectOne(new LambdaQueryWrapper<Position>().eq(Position::getPositionName, name));
    }

    @Override
    public List<Position> findByCompanyName(String companyName) {
        return baseMapper.selectList(new LambdaQueryWrapper<Position>().eq(Position::getIssueCompany, companyName));
    }

    @Override
    public IPage<Position> findCollect(String userId, QueryRequest request) {
        try {
            Page<Position> page = new Page<>();
            SortUtil.handlePageSort(request, page, "id", FebsConstant.ORDER_ASC, false);
            return this.baseMapper.findCollect(page,userId);
        } catch (Exception e) {
            log.error("查询职位异常", e);
            return null;
        }
    }

    @Override
    public IPage<Position> findSend(String userId, QueryRequest request) {
        try {
            Page<Position> page = new Page<>();
            SortUtil.handlePageSort(request, page, "id", FebsConstant.ORDER_ASC, false);
            return this.baseMapper.findSend(page,userId);
        } catch (Exception e) {
            log.error("查询职位异常", e);
            return null;
        }
    }

    @Override
    public IPage<Position> findPositionDetail(Position position, QueryRequest request) {
        try {
            Page<Position> page = new Page<>();
            SortUtil.handlePageSort(request, page, "id", FebsConstant.ORDER_ASC, false);
            return this.baseMapper.findPositionDetail(page,position);
        } catch (Exception e) {
            log.error("查询职位异常", e);
            return null;
        }
    }

    @Override
    public IPage<Position> findPositionCondition(Position position, QueryRequest request) {
        try {
            Page<Position> page = new Page<>();
            SortUtil.handlePageSort(request, page, "id", FebsConstant.ORDER_ASC, false);
            return this.baseMapper.findPositionCondition(page,position);
        } catch (Exception e) {
            log.error("查询职位异常", e);
            return null;
        }
    }

    @Override
    public void updateIssueTime(String name) throws Exception {
        Position position = new Position();
        position.setIssueTime(new Date());

        this.baseMapper.update(position, new LambdaQueryWrapper<Position>().eq(Position::getPositionName, name));
    }


    @Override
    @Transactional
    public void createPosition(Position position) throws Exception {
        // 创建职位
        position.setIssueTime(new Date());
        save(position);
    }

    @Override
    @Transactional
    public void updatePosition(Position position) throws Exception {
        // 更新职位
        updateById(position);

    }

    @Override
    @Transactional
    public void deletePositions(String[] positionIds) throws Exception {

        List<String> list = Arrays.asList(positionIds);

        removeByIds(list);
    }

}
