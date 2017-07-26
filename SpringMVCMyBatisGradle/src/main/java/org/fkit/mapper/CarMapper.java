package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.type.JdbcType;
import org.fkit.model.Car;
import tk.mybatis.mapper.common.Mapper;

public interface CarMapper extends Mapper<Car> {
	@Select("select * from car where user_id=#{userId}")
	List<Car> select1(Car car);
}