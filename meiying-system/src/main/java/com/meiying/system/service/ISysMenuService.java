package com.meiying.system.service;

import com.meiying.common.core.domain.entity.SysMenu;
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
}
