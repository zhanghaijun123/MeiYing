package com.meiying.system.service;

import com.meiying.system.domain.SysUser;

import java.util.List;

/**
 * Description: 用户模块接口服务申明
 * User: zhanghj
 * Date: 2020-09-29
 * Time: 15:56
 */
public interface ISysUserService {
    /**
     * 查询所有用户
     * @return
     */
    List<SysUser> selectUserList();

    /**
     * 根据id查询单个用户
     * @param s
     * @return
     */
    SysUser selectUserById(String s);

    /**
     * 根据登陆名查询用户
     * @param username
     * @return
     */
    SysUser selectUserByLoginName(String username);

    /**
     * 更新用户信息
     * @param user
     */
    int updateUserInfo(SysUser user);

    /**
     * 根据用户ID查询用户所属角色组
     *
     * @param userId 用户ID
     * @return 结果
     */
    public String selectUserRoleGroup(String userId);
    /**
     * 根据用户ID查询用户所属岗位组
     *
     * @param userId 用户ID
     * @return 结果
     */
    public String selectUserPostGroup(String userId);
}
