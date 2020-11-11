package com.meiying.system.mapper;

import com.meiying.system.domain.SysRoleDept;

import java.util.List;

/**
 * Description:角色部门数据层
 * User: zhanghj
 * Date: 2020-11-11
 * Time: 17:33
 */
public interface SysRoleDeptMapper {
    /**
     * 通过角色ID删除角色和部门关联
     *
     * @param roleId 角色ID
     * @return 结果
     */
    public int deleteRoleDeptByRoleId(String roleId);
    /**
     * 批量新增角色部门信息
     *
     * @param roleDeptList 角色部门列表
     * @return 结果
     */
    public int batchRoleDept(List<SysRoleDept> roleDeptList);
}
