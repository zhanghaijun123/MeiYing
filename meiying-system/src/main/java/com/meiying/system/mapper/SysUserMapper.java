package com.meiying.system.mapper;

import com.meiying.system.domain.SysUser;

import java.util.List;

/**
 * Description: 用户表数据层
 * User: zhanghj
 * Date: 2020-09-29
 * Time: 16:05
 */
public interface SysUserMapper {
    /**
     * 查询所有用户列表
     * @return
     */
    List<SysUser> selectUserList();

    /**
     * 根据id查询单个用户
     * @param id
     * @return
     */
    SysUser selectUserById(String id);

    /**
     * 根据登陆名称查询用户
     * @param userName
     * @return
     */
    SysUser selectUserByLoginName(String userName);

    /**
     * 更新用户信息
     * @param user
     * @return
     */
    int updateUser(SysUser user);
}
