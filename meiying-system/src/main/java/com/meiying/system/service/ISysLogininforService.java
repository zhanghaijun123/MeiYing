package com.meiying.system.service;

import com.meiying.system.domain.SysLogininfor;

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
}
