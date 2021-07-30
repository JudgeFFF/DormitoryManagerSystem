package com.itheima.service;

import com.itheima.po.Dormitory;
import com.itheima.po.PageInfo;

import java.util.List;

/**
 * 用户Service层接口
 */
public interface DormitoryService {

    //分页查询
    public PageInfo<Dormitory> findPageInfo(String a_name, Integer s_dormitoryid, String d_dormbuilding, Integer pageIndex, Integer pageSize);

	//添加宿舍信息
    public int addDormitory(Dormitory dormitory);

	//删除宿舍信息
    public int deleteDormitory(Integer d_id);

	//修改宿舍信息
    public int updateDormitory(Dormitory dormitory);

    public Dormitory findDormitoryById(Integer d_id);

    public List<Dormitory> getAll();
}
