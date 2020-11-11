package com.meiying.system.mapper;

import com.meiying.common.core.domain.entity.SysUser;

import java.util.List;

/**
 * Description: 用户表数据层
 * User: zhanghj
 * Date: 2020-09-29
 * Time: 16:05
 */
public interface SysUserMapper {
    /**
     * 新增用户信息
     *
     * @param user 用户信息
     * @return 结果
     */
    public int insertUser(SysUser user);
    /**
     * 查询所有用户列表
     * @return
     */
    List<SysUser> selectUserList(SysUser sysUser);

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
    /**
     * 校验用户名称是否唯一
     *
     * @param loginName 登录名称
     * @return 结果
     */
    public int checkLoginNameUnique(String loginName);
    /**
     * 校验手机号码是否唯一
     *
     * @param phonenumber 手机号码
     * @return 结果
     */
    public SysUser checkPhoneUnique(String phonenumber);
    /**
     * 校验email是否唯一
     *
     * @param email 用户邮箱
     * @return 结果
     */
    public SysUser checkEmailUnique(String email);
    /**
     * 批量删除用户信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteUserByIds(String[] ids);
    /**
     * 根据条件分页查询未已配用户角色列表
     *
     * @param user 用户信息
     * @return 用户信息集合信息
     */
    public List<SysUser> selectAllocatedList(SysUser user);
    /**
     * 根据条件分页查询未分配用户角色列表
     *
     * @param user 用户信息
     * @return 用户信息集合信息
     */
    public List<SysUser> selectUnallocatedList(SysUser user);
}
