package cn.tmp.controller;

import cn.tmp.po.Page;
import cn.tmp.service.LeavemessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/leavemessage",produces = {"application/json;charset=UTF-8"} )
public class LeavemessageController {

    @Autowired
    LeavemessageService leavemessageService;


    @RequestMapping("/ui")
    public String ui(HttpServletRequest request) {
        request.setAttribute("leavemessageList",leavemessageService.vo(leavemessageService.list(new Page())));
        return "leavemessage";
    }

//    @RequestMapping("/detail/{id}")
//    public String detail(@PathVariable Integer id,HttpServletRequest request) {
//        Leavemessage leavemessage = leavemessageService.selectByPrimaryKey(id);
//        List<Leavemessage> list = new ArrayList<>();
//        list.add(leavemessage);
//        List<VoLeavemessage> list1 = leavemessageService.vo(list);
//        request.setAttribute("leavemessage", list1.get(0));
//        return "leavemessage_detail";
//    }


}
