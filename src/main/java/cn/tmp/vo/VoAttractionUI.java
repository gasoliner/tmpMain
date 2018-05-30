package cn.tmp.vo;

import java.util.List;


public class VoAttractionUI {

    private String region;

    private List<VoAttraction> voAttractionList;

    public VoAttractionUI(String region, List<VoAttraction> voAttractionList) {
        this.region = region;
        this.voAttractionList = voAttractionList;
    }

    public VoAttractionUI() {
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public List<VoAttraction> getVoAttractionList() {
        return voAttractionList;
    }

    public void setVoAttractionList(List<VoAttraction> voAttractionList) {
        this.voAttractionList = voAttractionList;
    }
}
