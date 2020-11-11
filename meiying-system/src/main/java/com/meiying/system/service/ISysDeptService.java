package com.meiying.system.service;

import com.meiying.common.core.domain.Ztree;
import com.meiying.common.core.domain.entity.SysDept;
import com.meiying.common.core.domain.entity.SysRole;

import java.util.List;

/**
 * Description:部门服务接口申明
 * User: zhanghj
 * Date: 2020-11-06
 * Time: 15:06
 */
public interface ISysDeptService {
    /**
     * 查询部门管理树
     *
     * @param dept 部门信息
     * @return 所有部门信息
     */
    public List<Ztree> selectDeptTree(SysDept dept);
    /**
     * 查询部门管理树（排除下级）
     *
     * @param dept 部门信息
     * @return 所有部门信息
     */
    public List<Ztree> selectDeptTreeExcludeChild(SysDept dept);
    /**
     * 根据部门ID查询信息
     *
     * @param deptId 部门ID
     * @return 部门信息
     */
    public SysDept selectDeptById(String deptId);
    /**
     * 根据角色ID查询部门菜单
     *
     * @param role 角色对象
     * @return 菜单列表
     */
    public List<Ztree> roleDeptTreeData(SysRole role);
    /**
     * 查询部门管理数据
     *
     * @param dept 部门信息
     * @return 部门信息集合
     */
    public List<SysDept> selectDeptList(SysDept dept);
}
