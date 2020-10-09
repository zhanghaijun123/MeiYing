package com.meiying.system.mapper;

import com.meiying.system.domain.SysLogininfor;

/**
 * Description:系统访问日志情况信息 数据层
 * User: zhanghj
 * Date: 2020-10-09
 * Time: 16:23
 */
public interface SysLogininforMapper {
    /**
     * 新增系统登录日志
     *
     * @param logininfor 访问日志对象
     */
    public void insertLogininfor(SysLogininfor logininfor);
}
