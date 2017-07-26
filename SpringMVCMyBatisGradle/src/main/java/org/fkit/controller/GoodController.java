package org.fkit.controller;

import org.fkit.model.*;
import org.fkit.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class GoodController {
    @Autowired
    private GoodService goodService;

    @RequestMapping(value = "/main")
    public String main(Model model) {
        List<Good> goodList = goodService.getAllGood();
        model.addAttribute("goodList", goodList);
        return "main";
    }

    @RequestMapping(value = "/detatil/{id}")
    public String detatil(@PathVariable("id") int id, Model model, Comment comment,
                          HttpSession httpSession) {
        Good good = goodService.getGoodById(id);
        List<GoodColor> goodColorList = goodService.getColorByGoodId(id);
        if (comment.getComment() != null) {
            User user = (User) httpSession.getAttribute("user");
            comment.setId(null);
            comment.setUserId(user.getId());
            comment.setUserName(user.getName());
            goodService.insertComment(comment);
        }
        List<Comment> commentList = goodService.getComment(id);
        model.addAttribute("good", good);
        model.addAttribute("commentList", commentList);
        model.addAttribute("goodColorList", goodColorList);
        return "detatil";
    }

    @RequestMapping(value = "/buyCar")
    public String buyCar(UserGood userGood, Model model, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("user");
        userGood.setUserId(user.getId());
        userGood.setUserName(user.getName());
        Good good=goodService.getGoodById(userGood.getUserId());
        good.setGoodCount(good.getGoodCount()-userGood.getBuyCount());
        goodService.updateGood(good);
        goodService.insertOrder(userGood);
        List<Car> userGoodList = goodService.getAllOrder(user.getId());
//        System.out.println(userGoodList);
        model.addAttribute("userGoodList", userGoodList);
        return "car";
    }
    
  //取消购物车的东西
  	@RequestMapping(value="/good_delete")
  	public String delete(@RequestParam("id") Integer id,
  			HttpServletRequest request,
  			Model model,HttpSession httpSession){
  		goodService.deleteGood(id);
  		User user = (User) httpSession.getAttribute("user");
  		List<Car> userGoodList = goodService.getAllOrder(user.getId());
  		model.addAttribute("userGoodList", userGoodList);
  		return "buyCar";
  	}
  	
  	@RequestMapping(value = "/collection")
    public String collection(Collection collection, Model model, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("user");
        collection.setUserId(user.getId());
        collection.setUserName(user.getName());
        if(goodService.selectCollection(collection)==null){
        	goodService.insertCollection(collection);
        }
        List<Collection> userGoodList = goodService.getAllCollection();
        model.addAttribute("userGoodList",userGoodList);
        return "collection";
  	}
}
