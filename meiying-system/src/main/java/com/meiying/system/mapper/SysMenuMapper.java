package com.meiying.system.mapper;

import com.meiying.common.core.domain.entity.SysMenu;

import java.util.List;

/**
 * Description:菜单模块数据层
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 16:50
 */
public interface SysMenuMapper {
    /**
     * 查询系统正常显示菜单（不含按钮）
     *
     * @return 菜单列表
     */
    public List<SysMenu> selectMenuNormalAll();

    /**
     * 根据用户id查询菜单
     * @param userId
     * @return
     */
    List<SysMenu> selectMenusByUserId(String userId);
    /**
     * 根据用户ID查询权限
     *
     * @param userId 用户ID
     * @return 权限列表
     */
    public List<String> selectPermsByUserId(String userId);
}