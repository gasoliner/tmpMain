package cn.tmp.controller;

import cn.tmp.po.Consumer;
import cn.tmp.service.ConsumerService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Controller
@RequestMapping(value = "/login",produces = {"application/json;charset=UTF-8"} )
public class LoginController {

    @Autowired
    ConsumerService consumerService;


    @RequestMapping("/ui")
    public String ui() {
        return "login";
    }

    @RequestMapping("/login")
    @ResponseBody
    public void login(String name, String password, HttpServletRequest request, HttpServletResponse response) throws IOException {
        Subject currentUser = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(
                name,
                password
        );
        try {
            currentUser.login(token);
            Consumer consumer = consumerService.selectByPrimaryKey(Integer.parseInt(name));
            request.getSession().setAttribute("consumer",consumer);
            request.getSession().removeAttribute("login_error_info");
            response.sendRedirect("/index");
        } catch (Exception e) {
            e.printStackTrace();
            request.getSession().setAttribute("login_error_info","登录失败，用户名或者密码错误");
            response.sendRedirect("/login/ui");
        }
        return;
    }

    @RequestMapping("/registry")
    public String registry(Consumer consumer , HttpServletRequest request) {
        try {
            consumerService.insert(consumer);
            System.out.println("新增id = " + consumer.getCid());
            request.setAttribute("new_id",consumer.getCid());
        } catch (Exception e) {
        }
        return "registry_over";
    }

    @RequestMapping("/logout")
    public void logout(HttpServletResponse response) throws IOException {
        SecurityUtils.getSubject().logout();
        response.sendRedirect("/");
        return;
    }

    @RequestMapping("/registry_ui")
    public String registry_ui() {
        return "registry";
    }


}
