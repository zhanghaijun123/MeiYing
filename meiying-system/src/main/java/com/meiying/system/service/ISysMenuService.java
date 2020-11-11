package com.meiying.system.service;

import com.meiying.common.core.domain.Ztree;
import com.meiying.common.core.domain.entity.SysMenu;
import com.meiying.common.core.domain.entity.SysRole;
import com.meiying.common.core.domain.entity.SysUser;

import java.util.List;
import java.util.Set;

/**
 * Description:菜单模块服务声明
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 16:48
 */
public interface ISysMenuService {
    /**
     * 根据用户查询菜单
     * @param user
     * @return
     */
    List<SysMenu> selectMenusByUser(SysUser user);
    /**
     * 根据用户ID查询权限
     *
     * @param userId 用户ID
     * @return 权限列表
     */
    public Set<String> selectPermsByUserId(String userId);
    /**
     * 根据角色ID查询菜单
     *
     * @param role 角色对象
     * @param userId 用户ID
     * @return 菜单列表
     */
    public List<Ztree> roleMenuTreeData(SysRole role, String userId);
    /**
     * 查询菜单集合
     *
     * @param userId 用户ID
     * @return 所有菜单信息
     */
    public List<SysMenu> selectMenuAll(String userId);
}
