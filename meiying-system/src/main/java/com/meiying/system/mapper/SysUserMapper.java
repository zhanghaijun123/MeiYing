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

    SysUser selectUserById(String id);
}
