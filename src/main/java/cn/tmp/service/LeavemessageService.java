package cn.tmp.service;

import cn.tmp.po.Leavemessage;
import cn.tmp.po.Page;
import cn.tmp.vo.VoLeavemessage;

import java.util.List;


public interface LeavemessageService {
    List<Leavemessage> list(Page page);

    int insert(Leavemessage record);

    int delete(Integer id);

    int update(Leavemessage record);

    long count();

    List<VoLeavemessage> vo(List<Leavemessage> list);

    Leavemessage selectByPrimaryKey(Integer id);

}
