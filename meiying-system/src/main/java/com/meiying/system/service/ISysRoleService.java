package com.meiying.system.service;

import com.meiying.common.core.domain.entity.SysRole;

import java.util.List;
import java.util.Set;

/**
 * Description:角色模块接口服务申明
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 18:31
 */
public interface ISysRoleService {
    /**
     * 根据条件分页查询角色数据
     *
     * @param role 角色信息
     * @return 角色数据集合信息
     */
    public List<SysRole> selectRoleList(SysRole role);
    /**
     * 根据用户ID查询角色
     *
     * @param userId 用户ID
     * @return 权限列表
     */
    public Set<String> selectRoleKeys(String userId);
    /**
     * 查询所有角色
     *
     * @return 角色列表
     */
    public List<SysRole> selectRoleAll();
}
