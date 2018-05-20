package cn.tmp.controller;

import cn.tmp.po.*;
import cn.tmp.service.AttractionService;
import cn.tmp.service.RegionService;
import cn.tmp.service.RouteService;
import cn.tmp.vo.VoAttraction;
import cn.tmp.vo.VoAttractionUI;
import cn.tmp.vo.VoRoute;
import cn.tmp.vo.VoRouteUI;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Ww on 2018/5/12.
 */
@Controller
@RequestMapping(value = "/route",produces = {"application/json;charset=UTF-8"} )
public class RouteController {

    @Autowired
    RouteService routeService;

    @Autowired
    RegionService regionService;

    @Autowired
    AttractionService attractionService;


    @RequestMapping("/ui")
    public String ui(HttpServletRequest request) {
        List<Region> list1 = regionService.list(new Page());
        List<VoRouteUI> uiList = new ArrayList<>();
        for (Region region:
                list1) {
            uiList.add(new VoRouteUI(region.getName(),routeService.vo(routeService.listByRegion(region.getRid()))));
        }
        request.setAttribute("routeList",uiList);
        return "route";
    }

    @RequestMapping("/detail/{id}")
    public String detail(@PathVariable Integer id,HttpServletRequest request) {
        Route route = routeService.selectByPrimaryKey(id);
        List<Route> list = new ArrayList<>();
        list.add(route);
        List<VoRoute> list1 = routeService.vo(list);
        list1.get(0).setAttractionList(attractionService.listByRegion(route.getRid()));
        request.setAttribute("route", list1.get(0));
        return "route_detail";
    }



    @RequestMapping("/list")
    @ResponseBody
    public String getList(Page page){
        DataGrid dataGrid = new DataGrid();
        dataGrid.setRows(routeService.vo(routeService.list(page)));
        dataGrid.setTotal(routeService.count());
        return JSON.toJSONString(dataGrid);
    }

    @RequestMapping("/addition")
    @ResponseBody
    public String add(Route route) {
        try {
            routeService.insert(route);
            return JSON.toJSONString("操作成功");
        } catch (Exception e) {
            return JSON.toJSONString("操作失败");
        }
    }

    @RequestMapping("/updates/{id}")
    @ResponseBody
    public String update(@PathVariable Integer id, Route route) {
        route.setRtid(id);
        try {
            routeService.update(route);
            return JSON.toJSONString("操作成功");
        } catch (Exception e) {
            return JSON.toJSONString("操作失败");
        }
    }

    @RequestMapping("/deletion/{id}")
    @ResponseBody
    public String deletion(@PathVariable Integer id) {
        try {
            routeService.delete(id);
            return JSON.toJSONString("操作成功");
        } catch (Exception e) {
            return JSON.toJSONString("操作失败");
        }
    }
    
}
