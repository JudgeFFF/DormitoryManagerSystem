package com.itheima.service;

import com.itheima.po.PageInfo;
import com.itheima.po.StudentClean;

import java.util.List;

/**
 * 用户Service层接口
 */
public interface StudentCleanService {
    //分页查询
    public PageInfo<StudentClean> findPageInfo(Integer s_studentid, String s_name, Integer s_dormitoryid, Integer pageIndex, Integer pageSize);

    //添加学生卫生信息
    public int addStudentClean(StudentClean studentclean);

    //删除学生卫生信息
    public int deleteStudentClean(Integer g_id);

    //修改学生卫生信息
    public int updateStudentClean(StudentClean studentclean);

    public StudentClean findStudentCleanById(Integer g_id);

    public List<StudentClean> getAll();
}
