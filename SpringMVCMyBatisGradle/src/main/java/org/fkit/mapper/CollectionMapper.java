package org.fkit.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.type.JdbcType;
import org.fkit.model.Admin;
import org.fkit.model.Collection;

import tk.mybatis.mapper.common.Mapper;

public interface CollectionMapper extends Mapper<Collection> {
}