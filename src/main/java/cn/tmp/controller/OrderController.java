package cn.tmp.controller;

import cn.tmp.po.Orders;
import cn.tmp.service.OrdersService;
import cn.tmp.service.RegionService;
import cn.tmp.vo.VoOrders;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/order",produces = {"application/json;charset=UTF-8"} )
public class OrderController {

    @Autowired
    OrdersService ordersService;

    @Autowired
    RegionService regionService;

    @RequestMapping("/ui")
    public String ui(HttpServletRequest request) {
        Integer id = (Integer) SecurityUtils.getSubject().getPrincipal();
        System.out.println("id=" + id);
        List<VoOrders> list = ordersService.vo(ordersService.listByCid(id));
        request.setAttribute("orderList",list);
        return "order";
    }

    @RequestMapping("/detail/{id}")
    public String detail(@PathVariable Integer id,HttpServletRequest request) {
        Orders order = ordersService.selectByPrimaryKey(id);
        List<Orders> list = new ArrayList<>();
        list.add(order);
        List<VoOrders> list1 = ordersService.vo(list);
        request.setAttribute("order", list1.get(0));
        return "order_detail";
    }


}
