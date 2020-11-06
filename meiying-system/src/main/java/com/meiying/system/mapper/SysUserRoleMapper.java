package com.meiying.system.mapper;

import com.meiying.system.domain.SysUserRole;

import java.util.List;

/**
 * Description:
 * User: zhanghj
 * Date: 2020-11-06
 * Time: 16:21
 */
public interface SysUserRoleMapper {
    /**
     * 批量新增用户角色信息
     *
     * @param userRoleList 用户角色列表
     * @return 结果
     */
    public int batchUserRole(List<SysUserRole> userRoleList);
}
