package cn.tmp.po;


public class Item {

    private String kind;

    private double price = 0;

    private int count = 0;

    private String var;

    public Item(String kind, double price, int count, String var) {
        this.kind = kind;
        this.price = price;
        this.count = count;
        this.var = var;
    }

    public Item() {
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getVar() {
        return var;
    }

    public void setVar(String var) {
        this.var = var;
    }
}