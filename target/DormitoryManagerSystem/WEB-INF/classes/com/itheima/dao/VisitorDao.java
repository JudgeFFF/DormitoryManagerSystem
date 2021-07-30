package com.itheima.dao;

import com.itheima.po.Visitor;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 管理员DAO层接口
 */
public interface VisitorDao {
    //获取总条数
    public Integer totalCount(@Param("v_name") String v_name, @Param("v_phone") Integer v_phone);

    //获取用户列表
    public List<Visitor> getVisitorList(@Param("v_name") String v_name, @Param("v_phone") Integer v_phone, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);

    //添加访客信息
    public int addVisitor(Visitor visitor);

    public List<Visitor> getAll();
}
