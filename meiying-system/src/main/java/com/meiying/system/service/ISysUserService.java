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

    SysUser selectUserById(String s);
}
