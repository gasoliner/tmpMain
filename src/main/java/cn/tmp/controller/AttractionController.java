package cn.tmp.controller;

import cn.tmp.po.Attraction;
import cn.tmp.po.DataGrid;
import cn.tmp.po.Page;
import cn.tmp.po.Region;
import cn.tmp.service.AttractionService;
import cn.tmp.service.RegionService;
import cn.tmp.util.PageUtil;
import cn.tmp.vo.VoAttraction;
import cn.tmp.vo.VoAttractionUI;
import com.alibaba.fastjson.JSON;
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

@Controller
@RequestMapping(value = "/attraction",produces = {"application/json;charset=UTF-8"} )
public class AttractionController {

    @Autowired
    AttractionService attractionService;

    @Autowired
    RegionService regionService;


    @RequestMapping("/ui")
    public String ui(HttpServletRequest request) {
        List<Region> list1 = regionService.list(new Page());
        List<VoAttractionUI> uiList = new ArrayList<>();
        for (Region region:
                list1) {
            uiList.add(new VoAttractionUI(region.getName(),attractionService.vo(attractionService.listByRegion(region.getRid()))));
        }
        request.setAttribute("attractionList",uiList);
        return "attraction";
    }

    @RequestMapping("/detail/{id}")
    public String detail(@PathVariable Integer id,HttpServletRequest request) {
        Attraction attraction = attractionService.selectByPrimaryKey(id);
        List<Attraction> list = new ArrayList<>();
        list.add(attraction);
        List<VoAttraction> list1 = attractionService.vo(list);
        request.setAttribute("attraction", list1.get(0));
        return "attraction_detail";
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
