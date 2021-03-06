package cn.tmp.vo;

import cn.tmp.po.Attraction;
import cn.tmp.po.Route;

import java.util.List;


public class VoRoute extends Route {

    private String voRid;

    private String voAids;

    private Integer[] voAidss;

    private Double price;

    private List<Attraction> attractionList;

    public VoRoute(Route route) {
        this.setRtid(route.getRtid());
        this.setName(route.getName());
        this.setRid(route.getRid());
        this.setAids(route.getAids());
        this.setVar(route.getVar());
    }

    public VoRoute() {}

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public List<Attraction> getAttractionList() {
        return attractionList;
    }

    public void setAttractionList(List<Attraction> attractionList) {
        this.attractionList = attractionList;
    }

    public Integer[] getVoAidss() {
        return voAidss;
    }

    public void setVoAidss(Integer[] voAidss) {
        this.voAidss = voAidss;
    }

    public String getVoRid() {
        return voRid;
    }

    public void setVoRid(String voRid) {
        this.voRid = voRid;
    }

    public String getVoAids() {
        return voAids;
    }

    public void setVoAids(String voAids) {
        this.voAids = voAids;
    }
}
