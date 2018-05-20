package cn.tmp.vo;

import java.util.List;

/**
 * Created by Ww on 2018/5/19.
 */
public class VoRouteUI {

    private String region;

    private List<VoRoute> voRouteList;

    public VoRouteUI(String region, List<VoRoute> voRouteList) {
        this.region = region;
        this.voRouteList = voRouteList;
    }

    public VoRouteUI() {
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public List<VoRoute> getVoRouteList() {
        return voRouteList;
    }

    public void setVoRouteList(List<VoRoute> voRouteList) {
        this.voRouteList = voRouteList;
    }
}
