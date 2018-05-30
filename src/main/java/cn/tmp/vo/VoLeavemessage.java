package cn.tmp.vo;
import java.util.Date;

import cn.tmp.po.Attraction;
import cn.tmp.po.Leavemessage;


public class VoLeavemessage extends Leavemessage {

    private String voPublish;

    public VoLeavemessage(Leavemessage leavemessage) {
        this.setLmid(leavemessage.getLmid());
        this.setName(leavemessage.getName());
        this.setContent(leavemessage.getContent());
        this.setPublishtime(leavemessage.getPublishtime());
        this.setPublisher(leavemessage.getPublisher());
    }

    public String getVoPublish() {
        return voPublish;
    }

    public void setVoPublish(String voPublish) {
        this.voPublish = voPublish;
    }
}
