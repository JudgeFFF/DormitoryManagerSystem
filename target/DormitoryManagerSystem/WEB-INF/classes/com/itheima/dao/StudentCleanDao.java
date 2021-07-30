package com.itheima.dao;

import com.itheima.po.StudentClean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 管理员DAO层接口
 */
public interface StudentCleanDao {
    //获取总条数
    public Integer totalCount(@Param("s_studentid") Integer s_studentid, @Param("s_name") String s_name, @Param("s_dormitoryid") Integer s_dormitoryid);

    //获取用户列表
    public List<StudentClean> getStudentCleanList(@Param("s_studentid") Integer s_studentid, @Param("s_name") String s_name, @Param("s_dormitoryid") Integer s_dormitoryid, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);

    //添加宿舍卫生信息
    public int addStudentClean(StudentClean studentclean);

    //删除宿舍卫生信息
    public int deleteStudentClean(Integer g_id);

    //修改宿舍卫生信息
    public int updateStudentClean(StudentClean studentclean);

    public StudentClean findStudentCleanById(Integer g_id);

    public List<StudentClean> getAll();
}
