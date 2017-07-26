package org.fkit.service;

import org.fkit.mapper.*;
import org.fkit.model.*;
import org.fkit.model.Collection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodService {
    @Autowired
    private GoodMapper goodMapper;
    @Autowired
    private CommentMapper commentMapper;
    @Autowired
    private GoodColorMapper goodColorMapper;
    @Autowired
    private UserGoodMapper userGoodMapper;
    @Autowired
    private CarMapper carMapper;

    public List<Good> getAllGood() {
        return goodMapper.selectAll();
    }

    public Good getGoodById(int id) {
        Good good = new Good();
        good.setId(id);
        return goodMapper.selectOne(good);
    }

    public void insertComment(Comment comment) {
        commentMapper.insert(comment);
    }

    public List<Comment> getComment(int goodId) {
        Comment comment = new Comment();
        comment.setGoodId(goodId);
        return commentMapper.select(comment);
    }

    public List<GoodColor> getColorByGoodId(int id) {
        GoodColor goodColor = new GoodColor();
        goodColor.setGoodId(id);
        return goodColorMapper.select(goodColor);
    }

    public void insertOrder(UserGood userGood){
        userGoodMapper.insert(userGood);
    }

    public List<Car> getAllOrder(int userId){
//        UserGood userGood = new UserGood();
        Car car = new Car();
//        userGood.setUserId(userId);
        car.setUserId(userId);
        List<Car> list = carMapper.select1(car);
        return carMapper.select1(car);
    }

	public void deleteGood(Integer id) {
		// TODO Auto-generated method stub
		
	}

	public List<Collection> getAllCollection() {
		// TODO Auto-generated method stub
		return null;
	}

	public Object selectCollection(Collection collection) {
		// TODO Auto-generated method stub
		return null;
	}

	public void insertCollection(Collection collection) {
		// TODO Auto-generated method stub
		
	}
	
	public void updateGood(Good good){
		goodMapper.updateByPrimaryKey(good);
	}
}
