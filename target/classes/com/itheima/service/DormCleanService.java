package com.itheima.service;

import com.itheima.po.DormClean;
import com.itheima.po.PageInfo;

import java.util.List;

/**
 * 用户Service层接口
 */
public interface DormCleanService {
    //分页查询
    public PageInfo<DormClean> findPageInfo(Integer d_id, String d_dormbuilding, Integer pageIndex, Integer pageSize);

    //添加宿舍卫生信息
    public int addDormClean(DormClean dormclean);

    //删除宿舍卫生信息
    public int deleteDormClean(Integer g_id);

    //修改宿舍卫生信息
    public int updateDormClean(DormClean dormclean);

    public DormClean findDormCleanById(Integer g_id);

    public List<DormClean> getAll();
}
