package cn.tmp.vo;

import cn.tmp.po.Special;

/**
 * Created by Ww on 2018/5/16.
 */
public class VoSpecial extends Special {

    private String voAid;

    private String voImg;

    public VoSpecial(Special special) {
        this.setSid(special.getSid());
        this.setAid(special.getAid());
        this.setName(special.getName());
        this.setPrice(special.getPrice());
        this.setImg(special.getImg());
        this.setInfo(special.getInfo());
    }

    public VoSpecial() {}

    public String getVoAid() {
        return voAid;
    }

    public void setVoAid(String voAid) {
        this.voAid = voAid;
    }

    public String getVoImg() {
        return voImg;
    }

    public void setVoImg(String voImg) {
        this.voImg = voImg;
    }
}
