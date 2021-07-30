package com.itheima.dao;

import com.itheima.po.DormRepair;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 管理员DAO层接口
 */
public interface DormRepairDao {
    //获取总条数
    public Integer totalCount(@Param("d_id") Integer d_id, @Param("d_dormbuilding") String d_dormbuilding);

    //获取宿舍维修列表
    public List<DormRepair> getDormRepairList(@Param("d_id") Integer d_id, @Param("d_dormbuilding") String d_dormbuilding, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);

    //添加宿舍维修信息
    public int addDormRepair(DormRepair dormrepair);

    //删除宿舍维修信息
    public int deleteDormRepair(Integer r_id);

    //修改宿舍维修信息
    public int updateDormRepair(DormRepair dormrepair);

    public DormRepair findDormRepairById(Integer r_id);

    public List<DormRepair> getAll();
}
