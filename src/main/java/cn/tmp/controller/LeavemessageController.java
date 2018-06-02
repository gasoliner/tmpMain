package cn.tmp.controller;

import cn.tmp.po.Consumer;
import cn.tmp.po.Leavemessage;
import cn.tmp.po.Page;
import cn.tmp.service.LeavemessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

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

    @RequestMapping("/addition")
    public void addition(Leavemessage leavemessage, HttpServletRequest request, HttpServletResponse response) throws IOException {
        leavemessage.setPublishtime(new Date());
        leavemessage.setPublisher(((Consumer)request.getSession().getAttribute("consumer")).getName());
        try {
            leavemessageService.insert(leavemessage);
        } catch (Exception e) {
        }
        response.sendRedirect("/leavemessage/ui");
        return;
    }


}
