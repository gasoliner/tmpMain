package cn.tmp.controller;

import cn.tmp.po.Page;
import cn.tmp.service.AttractionService;
import cn.tmp.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
public class UIController {

    @Autowired
    AttractionService attractionService;

    @Autowired
    HotelService hotelService;

    @RequestMapping("/")
    public String showIndex(HttpServletRequest request){
        pre(request);
        return "index";
    }

    @RequestMapping("/index")
    public String showIndex2(HttpServletRequest request){
        pre(request);
        return "index";
    }

    private void pre(HttpServletRequest request) {
        request.setAttribute("attractionList",attractionService.vo(attractionService.list(new Page())));
        request.setAttribute("hotelList",hotelService.vo(hotelService.list(new Page())));
        return;
    }

}
