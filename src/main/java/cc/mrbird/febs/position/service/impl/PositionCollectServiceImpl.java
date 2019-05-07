package cc.mrbird.febs.position.service.impl;

import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.position.dao.PositionCollectMapper;
import cc.mrbird.febs.position.domain.PositionCollect;
import cc.mrbird.febs.position.service.PositionCollectService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Slf4j
@Service("positionCollectService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class PositionCollectServiceImpl extends ServiceImpl<PositionCollectMapper, PositionCollect> implements PositionCollectService {

    @Override
    public PositionCollect findPositionCollect(QueryRequest request, PositionCollect positionCollect) {
        try {
            return this.baseMapper.findPositionCollectDetail(positionCollect);
        } catch (Exception e) {
            log.error("获取收藏职位信息失败", e);
            return null;
        }
    }

    @Override
    @Transactional
    public void createPositionCollect(PositionCollect positionCollect) {
        positionCollect.setCollectTime(new Date());
        this.save(positionCollect);
    }

    @Override
    @Transactional
    public void updatePositionCollect(PositionCollect positionCollect) {
        positionCollect.setCollectTime(new Date());
        this.baseMapper.updateById(positionCollect);
    }

    @Override
    @Transactional
    public void deletePositionCollects(String[] positionCollectIds) {
        List<String> list = Arrays.asList(positionCollectIds);
        this.baseMapper.deleteBatchIds(list);
    }

}
