package com.itheima.service;

import com.itheima.po.DormRepair;
import com.itheima.po.PageInfo;

import java.util.List;

/**
 * 用户Service层接口
 */
public interface DormRepairService {

    //分页查询
    public PageInfo<DormRepair> findPageInfo(Integer d_id, String d_dormbuilding, Integer pageIndex, Integer pageSize);

    //添加宿舍维修信息
    public int addDormRepair(DormRepair dormrepair);

    //删除宿舍维修信息
    public int deleteDormRepair(Integer r_id);

    //修改宿舍维修信息
    public int updateDormRepair(DormRepair dormrepair);

    public DormRepair findDormRepairById(Integer r_id);

    public List<DormRepair> getAll();
}
