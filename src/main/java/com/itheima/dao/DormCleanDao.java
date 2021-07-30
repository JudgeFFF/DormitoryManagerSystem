package com.itheima.dao;

import com.itheima.po.DormClean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 管理员DAO层接口
 */
public interface DormCleanDao {
    //获取总条数
    public Integer totalCount(@Param("d_id") Integer d_id, @Param("d_dormbuilding") String d_dormbuilding);

    //获取用户列表
    public List<DormClean> getDormCleanList(@Param("d_id") Integer d_id, @Param("d_dormbuilding") String d_dormbuilding, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);

    //添加宿舍卫生信息
    public int addDormClean(DormClean dormclean);

    //删除宿舍卫生信息
    public int deleteDormClean(Integer g_id);

    //修改宿舍卫生信息
    public int updateDormClean(DormClean dormclean);

    public DormClean findDormCleanById(Integer g_id);

    public List<DormClean> getAll();
}
