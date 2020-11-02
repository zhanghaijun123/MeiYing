package com.meiying.system.service;

import com.meiying.system.domain.SysMenu;
import com.meiying.system.domain.SysUser;

import java.util.List;

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
}
