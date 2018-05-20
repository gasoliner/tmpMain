package cn.tmp.vo;

import java.util.List;

/**
 * Created by Ww on 2018/5/19.
 */
public class VoSpecialUI {

    private String attraction;

    private List<VoSpecial> voSpecialList;

    public VoSpecialUI(String attraction, List<VoSpecial> voSpecialList) {
        this.attraction = attraction;
        this.voSpecialList = voSpecialList;
    }

    public VoSpecialUI() {
    }

    public String getAttraction() {
        return attraction;
    }

    public void setAttraction(String attraction) {
        this.attraction = attraction;
    }

    public List<VoSpecial> getVoSpecialList() {
        return voSpecialList;
    }

    public void setVoSpecialList(List<VoSpecial> voSpecialList) {
        this.voSpecialList = voSpecialList;
    }
}
