package com.meiying.system.mapper;

import com.meiying.common.core.domain.entity.SysDept;

import java.util.List;

/**
 * Description:部门服务数据层
 * User: zhanghj
 * Date: 2020-11-06
 * Time: 15:07
 */
public interface SysDeptMapper {
    /**
     * 查询部门管理数据
     *
     * @param dept 部门信息
     * @return 部门信息集合
     */
    public List<SysDept> selectDeptList(SysDept dept);
    /**
     * 根据部门ID查询信息
     *
     * @param deptId 部门ID
     * @return 部门信息
     */
    public SysDept selectDeptById(String deptId);
    /**
     * 根据角色ID查询部门
     *
     * @param roleId 角色ID
     * @return 部门列表
     */
    public List<String> selectRoleDeptTree(String roleId);
}
