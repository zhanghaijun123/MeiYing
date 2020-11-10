package com.meiying.system.service;

import com.meiying.common.core.domain.entity.SysUser;

import java.util.List;

/**
 * Description: 用户模块接口服务申明
 * User: zhanghj
 * Date: 2020-09-29
 * Time: 15:56
 */
public interface ISysUserService {
    /**
     * 保存用户信息
     *
     * @param user 用户信息
     * @return 结果
     */
    public int insertUser(SysUser user);
    /**
     * 根据条件分页查询用户列表
     *
     * @param user 用户信息
     * @return 用户信息集合信息
     */
    public List<SysUser> selectUserList(SysUser user);

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
    /**
     * 校验用户名称是否唯一
     *
     * @param loginName 登录名称
     * @return 结果
     */
    public String checkLoginNameUnique(String loginName);
    /**
     * 校验手机号码是否唯一
     *
     * @param user 用户信息
     * @return 结果
     */
    public String checkPhoneUnique(SysUser user);

    /**
     * 校验email是否唯一
     *
     * @param user 用户信息
     * @return 结果
     */
    public String checkEmailUnique(SysUser user);
    /**
     * 修改用户密码信息
     *
     * @param user 用户信息
     * @return 结果
     */
    public int resetUserPwd(SysUser user);
    /**
     * 校验用户是否允许操作
     *
     * @param user 用户信息
     */
    public void checkUserAllowed(SysUser user);
    /**
     * 保存修改用户信息
     *
     * @param user 用户信息
     * @return 结果
     */
    public int updateUser(SysUser user);
    /**
     * 批量删除用户信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     * @throws Exception 异常
     */
    public int deleteUserByIds(String ids) throws Exception;
    /**
     * 导入用户数据
     *
     * @param userList 用户数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作用户
     * @return 结果
     */
    public String importUser(List<SysUser> userList, Boolean isUpdateSupport, String operName);
    /**
     * 用户授权角色
     *
     * @param userId 用户ID
     * @param roleIds 角色组
     */
    public void insertUserAuth(String userId, String[] roleIds);
    /**
     * 用户状态修改
     *
     * @param user 用户信息
     * @return 结果
     */
    public int changeStatus(SysUser user);
}
