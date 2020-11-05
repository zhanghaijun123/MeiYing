package com.meiying.system.service;

import com.meiying.system.domain.SysOperLog;

/**
 * Description:系统操作日志服务申明
 * User: zhanghj
 * Date: 2020-11-05
 * Time: 14:23
 */
public interface ISysOperLogService {
    /**
     * 新增操作日志
     *
     * @param operLog 操作日志对象
     */
    public void insertOperlog(SysOperLog operLog);
}
