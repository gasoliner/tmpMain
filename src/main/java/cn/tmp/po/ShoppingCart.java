package cn.tmp.po;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ShoppingCart {

    private Map<String,List<Item>> map = new HashMap<>();

    private Double sum = 0D;

    public ShoppingCart() {
        map.put("门票",new ArrayList<Item>());
        map.put("酒店",new ArrayList<Item>());
        map.put("特产",new ArrayList<Item>());
        map.put("路线",new ArrayList<Item>());
    }

    public Map<String, List<Item>> getMap() {
        return map;
    }

    public void setMap(Map<String, List<Item>> map) {
        this.map = map;
    }

    public Double getSum() {
        return sum;
    }

    public void setSum(Double sum) {
        this.sum = sum;
    }
}
