package org.fkit.controller;

import org.fkit.model.User;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
//import sun.misc.FormattedFloatingDecimal;

import javax.servlet.http.HttpSession;
import java.text.Normalizer;

/**
 * Created by dell on 2017/6/16.
 */
@Controller
public class FormController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/{formName}")
    public String login(@PathVariable("formName") String formName) {
        return formName;
    }

    @RequestMapping(value = "/goMain", method = RequestMethod.POST)
    public String loginForm(@RequestParam("username") String username, @RequestParam("pass") String pass, Model model,
                            HttpSession httpSession) {
        User user = userService.getUser(username, pass);
        httpSession.setAttribute("user", user);
        if (user != null) {
            return "redirect:/main";
        } else {
            model.addAttribute("message", "用户名或者密码错误，请确认！");
            return "login";
        }
    }

    @RequestMapping(value = "/goRegister", method = RequestMethod.POST)
    public String register(User user, Model model) {
        userService.addUser(user);
        model.addAttribute("success", "恭喜您注册成功，请登录!");
        return "login";
    }
}
