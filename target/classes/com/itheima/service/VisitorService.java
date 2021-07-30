package com.itheima.service;

import com.itheima.po.PageInfo;
import com.itheima.po.Visitor;
import org.springframework.ui.Model;

import java.util.List;

/**
 * 用户Service层接口
 */
public interface VisitorService {
    //分页查询
    public PageInfo<Visitor> findPageInfo(String v_name, Integer v_phone, Integer pageIndex, Integer pageSize);

    //添加访客信息
    public int addVisitor(Visitor visitor);

    public List<Visitor> getAll();
}
