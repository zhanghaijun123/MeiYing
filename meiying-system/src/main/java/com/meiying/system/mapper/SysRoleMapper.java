package com.meiying.system.mapper;

import com.meiying.common.core.domain.entity.SysRole;

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
    /**
     * 根据条件分页查询角色数据
     *
     * @param role 角色信息
     * @return 角色数据集合信息
     */
    public List<SysRole> selectRoleList(SysRole role);
}
