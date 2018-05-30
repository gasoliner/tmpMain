package cn.tmp.service.impl;

import cn.tmp.mapper.LeavemessageMapper;
import cn.tmp.po.Leavemessage;
import cn.tmp.po.LeavemessageExample;
import cn.tmp.po.Page;
import cn.tmp.service.LeavemessageService;
import cn.tmp.service.RegionService;
import cn.tmp.util.TimeUtils;
import cn.tmp.vo.VoLeavemessage;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service("leavemessageService")
public class LeavemessageServiceImpl implements LeavemessageService {


    @Autowired
    LeavemessageMapper leavemessageMapper;


    long total = 0L;

    @Override
    public List<Leavemessage> list(Page page) {
        PageHelper.startPage(page.getPage(), page.getRows());
        List<Leavemessage> list = leavemessageMapper.selectByExample(new LeavemessageExample());
        PageInfo<Leavemessage> pageInfo = new PageInfo<>(list);
        this.total = pageInfo.getTotal();
        return list;
    }

    @Override
    public int insert(Leavemessage record) {
        return leavemessageMapper.insertSelective(record);
    }

    @Override
    public int delete(Integer id) {
        return leavemessageMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int update(Leavemessage record) {
        return leavemessageMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public long count() {
        return total;
    }

    @Override
    public List<VoLeavemessage> vo(List<Leavemessage> list) {
        List<VoLeavemessage> list1 = new ArrayList<>();
        for (Leavemessage leavemessage:
                list) {
            VoLeavemessage voLeavemessage = new VoLeavemessage(leavemessage);
            voLeavemessage.setVoPublish(TimeUtils.dateToString(voLeavemessage.getPublishtime()));
            list1.add(voLeavemessage);
        }
        return list1;
    }

    @Override
    public Leavemessage selectByPrimaryKey(Integer id) {
        return leavemessageMapper.selectByPrimaryKey(id);
    }


}
