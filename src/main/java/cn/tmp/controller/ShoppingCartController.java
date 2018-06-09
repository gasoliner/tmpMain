package cn.tmp.controller;
import java.math.BigDecimal;
import java.util.Date;

import cn.tmp.po.*;
import cn.tmp.service.AttractionService;
import cn.tmp.service.OrdersService;
import cn.tmp.util.PageUtil;
import com.alibaba.fastjson.JSON;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/shoppingCart",produces = {"application/json;charset=UTF-8"} )
public class ShoppingCartController {

    @Autowired
    AttractionService attractionService;

    @Autowired
    OrdersService ordersService;


    @RequestMapping("/submitOrder")
    public void submitOrder(HttpServletRequest request,HttpServletResponse response) throws IOException {
        ShoppingCart shoppingCart = (ShoppingCart) request.getSession().getAttribute("shoppingCart");
        System.out.println("支付完成，共支付" + shoppingCart.getSum() + "元。");

        StringBuilder orderName = new StringBuilder();
//        门票
        List<Item> menpiao = shoppingCart.getMap().get("门票");
        for (Item item:
                menpiao) {
            orderName.append("[" + item.getVar() + "-" + item.getPrice() + "*" + item.getCount() + "张]");
        }
        orderName.append("|");
//        酒店
        List<Item> jiudian = shoppingCart.getMap().get("酒店");
        for (Item item:
                jiudian) {
            orderName.append("[" + item.getVar() + "-" + item.getPrice() + "*" + item.getCount() + "晚]");
        }
        orderName.append("|");
//        特产
        List<Item> techan = shoppingCart.getMap().get("特产");
        for (Item item:
                techan) {
            orderName.append("[" + item.getVar() + "-" + item.getPrice() + "*" + item.getCount() + "份]");
        }
//        路线
        List<Item> luxian = shoppingCart.getMap().get("路线");
        for (Item item:
                luxian) {
            orderName.append("[" + item.getVar() + "-" + item.getPrice() + "*" + item.getCount() + "份]");
        }

        Orders orders = new Orders();
        orders.setName(orderName.toString());
        orders.setSum(BigDecimal.valueOf(shoppingCart.getSum()));
        orders.setTime(new Date());
        orders.setState("已支付");
        orders.setCid((Integer) SecurityUtils.getSubject().getPrincipal());
        orders.setVar("无");
        try {
            ordersService.insert(orders);
            request.getSession().removeAttribute("shoppingCart");
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("/order/ui");
        return;
    }

    @RequestMapping("/add")
    public void add(String kind, Double price, String name, Integer count, HttpServletRequest request,HttpServletResponse response) throws IOException {
        if (count == null || count == 0) {
            response.sendRedirect("/");
            return;
        }
        ShoppingCart shoppingCart = (ShoppingCart) request.getSession().getAttribute("shoppingCart");
        if (shoppingCart == null) {
            shoppingCart = new ShoppingCart();
        }
        Map<String, List<Item>> map = shoppingCart.getMap();
        List<Item> list = map.get(kind);
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(new Item(kind,price,count,name));
//        修改sum值
        shoppingCart.setSum(shoppingCart.getSum() + (price * count));
        request.getSession().setAttribute("shoppingCart",shoppingCart);
        request.getSession().setAttribute("add_over_info","TMP温馨提示：添加到购物车成功，您可以选择页面上方导航栏继续浏览");
        response.sendRedirect("/shoppingCart/detail");
        return;
    }


    @RequestMapping("/createNewItem")
    public String ui(String kind, Double price, String name, HttpServletRequest request) {
        System.out.println("kind = " + kind);
        System.out.println("price = " + price);
        System.out.println("name = " + name);
        request.setAttribute("kind",kind);
        request.setAttribute("price",price);
        request.setAttribute("name",name);
        return "createNewItem";
    }

    @RequestMapping("/detail")
    public String detail(HttpServletRequest request) {
        ShoppingCart shoppingCart = (ShoppingCart) request.getSession().getAttribute("shoppingCart");
        if (shoppingCart == null) {
            shoppingCart = new ShoppingCart();
        }
//        门票
        List<Item> menpiao = shoppingCart.getMap().get("门票");
//        酒店
        List<Item> jiudian = shoppingCart.getMap().get("酒店");
//        特产
        List<Item> techan = shoppingCart.getMap().get("特产");
//        路线
        List<Item> luxian = shoppingCart.getMap().get("路线");
        request.setAttribute("menpiao", menpiao);
        request.setAttribute("jiudian", jiudian);
        request.setAttribute("techan", techan);
        request.setAttribute("luxian", luxian);
        request.setAttribute("sum", shoppingCart.getSum());
        return "shoppingCartDetail";
    }

    @RequestMapping("/ddllist")
    @ResponseBody
    public String ddlList(Page page){
        return JSON.toJSONString(attractionService.list(page));
    }

    @RequestMapping("/list")
    @ResponseBody
    public String getList(Page page){
        DataGrid dataGrid = new DataGrid();
        dataGrid.setRows(attractionService.vo(attractionService.list(page)));
        dataGrid.setTotal(attractionService.count());
        return JSON.toJSONString(dataGrid);
    }

    @RequestMapping("/img/{id}")
    public void pic(@PathVariable Integer id, HttpServletResponse response) throws IOException {
        PageUtil.showImg(attractionService.selectByPrimaryKey(id).getImg(),response);
    }

}
