package org.fkit.controller;

import org.fkit.model.Admin;
import org.fkit.model.User;
import org.fkit.model.Car;
import org.fkit.model.Good;
import org.fkit.service.AdminService;
import org.fkit.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
//import sun.misc.FormattedFloatingDecimal;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.text.Normalizer;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * Created by dell on 2017/6/16.
 */
@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;
    @Autowired
    private GoodService goodService;

@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
public String loginForm(@RequestParam("adminname") String adminname, @RequestParam("password") String password, Model model,
                        HttpSession httpSession) {
    Admin admin = adminService.getAdmin(adminname, password);
    httpSession.setAttribute("admin",admin); 
    if (admin != null) {
        return "redirect:/admin";
    } else {
        model.addAttribute("message", "用户名或者密码错误，请确认！");
        return "adminlogin";
    }
}

@RequestMapping(value = "/goAddgood")
public String addGood(Good good,Model model,
                        HttpSession httpSession) {
    adminService.addGood(good);
    httpSession.setAttribute("good", good);
    List<Good> goodList = goodService.getAllGood();
    model.addAttribute("goodList", goodList);
    return "main";
} 
@RequestMapping(value="/goDeletegood")
	public String deleteGood(Good good,Model model,
            HttpSession httpSession){
		adminService.deleteGood(good);
		httpSession.setAttribute("good", good);
	    List<Good> goodList = goodService.getAllGood();
	    model.addAttribute("goodList", goodList);
		return "main";
	}


@RequestMapping(value="/goUpdategood")
public ModelAndView  updateGood(@RequestParam("goodname") String goodname,
		@RequestParam("oldgoodprice") String oldgoodprice,@RequestParam("newgoodprice") String newgoodprice,
		Model model,
		ModelAndView mv,
		HttpServletRequest request,
		@ModelAttribute Good good){
	if(good != null){
		Boolean flag= adminService.updateByPrimaryID(goodname,oldgoodprice,newgoodprice);
		if(flag){
			mv.addObject("message","修改成功!");
		mv.setViewName(("forward:/main"));
		}else{
			mv.addObject("message","未找到商品！");
		}
	}else{
		mv.addObject("message","未找到商品！");
		mv.setViewName("forward:/updategood");
	}
	return mv;
}
}
