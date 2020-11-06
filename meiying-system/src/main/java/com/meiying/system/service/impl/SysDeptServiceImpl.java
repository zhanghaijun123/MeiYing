package com.meiying.system.service.impl;

import com.meiying.common.annotation.DataScope;
import com.meiying.common.constant.UserConstants;
import com.meiying.common.core.domain.Ztree;
import com.meiying.common.core.domain.entity.SysDept;
import com.meiying.common.utils.StringUtils;
import com.meiying.system.mapper.SysDeptMapper;
import com.meiying.system.service.ISysDeptService;
import org.apache.commons.lang3.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Description:
 * User: zhanghj
 * Date: 2020-11-06
 * Time: 15:07
 */
@Service
public class SysDeptServiceImpl implements ISysDeptService {
    @Autowired
    private SysDeptMapper deptMapper;
    /**
     * 查询部门管理树
     *
     * @param dept 部门信息
     * @return 所有部门信息
     */
    @Override
    @DataScope(deptAlias = "d")
    public List<Ztree> selectDeptTree(SysDept dept)
    {
        List<SysDept> deptList = deptMapper.selectDeptList(dept);
        List<Ztree> ztrees = initZtree(deptList);
        return ztrees;
    }
    /**
     * 查询部门管理树（排除下级）
     *
     * @param dept
     * @return 所有部门信息
     */
    @Override
    @DataScope(deptAlias = "d")
    public List<Ztree> selectDeptTreeExcludeChild(SysDept dept)
    {
        String deptId = dept.getDeptId();
        List<SysDept> deptList = deptMapper.selectDeptList(dept);
        Iterator<SysDept> it = deptList.iterator();
        while (it.hasNext())
        {
            SysDept d = (SysDept) it.next();
            if (StringUtils.equals(d.getDeptId(),deptId) || ArrayUtils.contains(StringUtils.split(d.getAncestors(), ","), deptId))
            {
                it.remove();
            }
        }
        List<Ztree> ztrees = initZtree(deptList);
        return ztrees;
    }
    /**
     * 根据部门ID查询信息
     *
     * @param deptId 部门ID
     * @return 部门信息
     */
    @Override
    public SysDept selectDeptById(String deptId)
    {
        return deptMapper.selectDeptById(deptId);
    }
    /**
     * 对象转部门树
     *
     * @param deptList 部门列表
     * @return 树结构列表
     */
    public List<Ztree> initZtree(List<SysDept> deptList)
    {
        return initZtree(deptList, null);
    }
    /**
     * 对象转部门树
     *
     * @param deptList 部门列表
     * @param roleDeptList 角色已存在菜单列表
     * @return 树结构列表
     */
    public List<Ztree> initZtree(List<SysDept> deptList, List<String> roleDeptList)
    {

        List<Ztree> ztrees = new ArrayList<Ztree>();
        boolean isCheck = StringUtils.isNotNull(roleDeptList);
        for (SysDept dept : deptList)
        {
            if (UserConstants.DEPT_NORMAL.equals(dept.getStatus()))
            {
                Ztree ztree = new Ztree();
                ztree.setId(dept.getDeptId());
                ztree.setpId(dept.getParentId());
                ztree.setName(dept.getDeptName());
                ztree.setTitle(dept.getDeptName());
                if (isCheck)
                {
                    ztree.setChecked(roleDeptList.contains(dept.getDeptId() + dept.getDeptName()));
                }
                ztrees.add(ztree);
            }
        }
        return ztrees;
    }
}
