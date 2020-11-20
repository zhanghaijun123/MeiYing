package com.meiying.system.service;

import com.meiying.system.domain.SysLogininfor;

import java.util.List;

/**
 * Description:系统访问日志情况记录信息 服务层
 * User: zhanghj
 * Date: 2020-10-09
 * Time: 16:17
 */
public interface ISysLogininforService {
    /**
     * 新增系统登录日志
     *
     * @param logininfor 访问日志对象
     */
    public void insertLogininfor(SysLogininfor logininfor);
    /**
     * 查询系统登录日志集合
     *
     * @param logininfor 访问日志对象
     * @return 登录记录集合
     */
    public List<SysLogininfor> selectLogininforList(SysLogininfor logininfor);
    /**
     * 批量删除系统登录日志
     *
     * @param ids 需要删除的数据
     * @return
     */
    public int deleteLogininforByIds(String ids);
    /**
     * 清空系统登录日志
     */
    public void cleanLogininfor();
}
