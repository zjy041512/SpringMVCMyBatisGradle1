package org.fkit.service;

import java.util.List;

import org.fkit.mapper.AdminMapper;
import org.fkit.mapper.GoodMapper;
import org.fkit.model.Admin;
import org.fkit.model.Comment;
import org.fkit.model.Good;
import org.fkit.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    @Autowired
    private AdminMapper adminMapper;
    @Autowired
    private GoodMapper goodMapper;
    
    public Admin getAdmin(String adminname, String password) {
        Admin admin = new Admin();
        admin.setAdminName(adminname);
        admin.setAdminPass(password);
        return adminMapper.selectOne(admin);
    }
    
    
    public List<Good> getGood(int goodId) {
        Good good = new Good();
        good.setId(goodId);
        return goodMapper.select(good);
    }
    
    public void addGood(Good good) {
        goodMapper.insert(good);
    }
    
    public void deleteGood(Good good){
    	goodMapper.delete(good);
    }
    
    public boolean updateByPrimaryID(String goodname,String oldgoodprice,String newgoodprice){
 	   Good good=new Good();
        good.setGoodName(goodname);
        if(goodMapper.selectCount(good)>0){
     	   good=goodMapper.selectOne(good);
     	   good.setGoodPrice(newgoodprice);
     	   goodMapper.updateByPrimaryKey(good);
     	  return true;
        }else{
     	   return false; 
        }
    }
}
