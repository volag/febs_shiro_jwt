package cc.mrbird.febs.position.service.impl;

import cc.mrbird.febs.common.domain.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.position.dao.PositionSendMapper;
import cc.mrbird.febs.position.domain.PositionSend;
import cc.mrbird.febs.position.domain.PositionSend;
import cc.mrbird.febs.position.service.PositionSendService;
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
@Service("positionSendService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class PositionSendServiceImpl extends ServiceImpl<PositionSendMapper, PositionSend> implements PositionSendService {

    @Override
    public PositionSend findPositionSend(QueryRequest request, PositionSend positionSend) {
        try {
            return this.baseMapper.findPositionSendDetail(positionSend);
        } catch (Exception e) {
            log.error("获取收藏职位信息失败", e);
            return null;
        }
    }

    @Override
    @Transactional
    public void createPositionSend(PositionSend positionSend) {
        positionSend.setSendTime(new Date());
        this.save(positionSend);
    }

    @Override
    @Transactional
    public void updatePositionSend(PositionSend positionSend) {
        positionSend.setSendTime(new Date());
        this.baseMapper.updateById(positionSend);
    }

    @Override
    @Transactional
    public void deletePositionSends(String[] positionSendIds) {
        List<String> list = Arrays.asList(positionSendIds);
        this.baseMapper.deleteBatchIds(list);
    }

}
