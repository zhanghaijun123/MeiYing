package com.meiying.system.mapper;

import com.meiying.system.domain.SysRole;

import java.util.List;

/**
 * Description:
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 18:33
 */
public interface SysRoleMapper {
    /**
     * 根据用户ID查询角色
     *
     * @param userId 用户ID
     * @return 角色列表
     */
    public List<SysRole> selectRolesByUserId(String userId);
}
