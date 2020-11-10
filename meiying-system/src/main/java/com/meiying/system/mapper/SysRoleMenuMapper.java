package com.meiying.system.mapper;

import com.meiying.system.domain.SysRoleMenu;

import java.util.List;

/**
 * Description:角色菜单数据层
 * User: zhanghj
 * Date: 2020-11-10
 * Time: 13:50
 */
public interface SysRoleMenuMapper {
    /**
     * 批量新增角色菜单信息
     *
     * @param roleMenuList 角色菜单列表
     * @return 结果
     */
    public int batchRoleMenu(List<SysRoleMenu> roleMenuList);

}
