package com.itheima.dao;

import com.itheima.po.Class;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 管理员DAO层接口
 */
public interface ClassDao {
    //获取总条数
    public Integer totalCount(@Param("c_classname") String c_classname, @Param("c_classid") Integer c_classid, @Param("c_counsellor") String c_counsellor);

    //获取用户列表
    public List<Class> getClassList(@Param("c_classname") String c_classname, @Param("c_classid") Integer c_classid, @Param("c_counsellor") String c_counsellor, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);

	//删除班级信息
    public int deleteClass(Integer c_id);

	//添加班级信息
    public int addClass(Class ucalss);

	//修改班级信息
    public int updateClass(Class uclass);

    //查询班级人员信息
    public List<Class> findClassStudent(Class uclass);

    public Class findClassById(Integer c_id);

    public List<Class> getAll();
}
