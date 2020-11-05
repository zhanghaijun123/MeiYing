package com.meiying.system.mapper;

import com.meiying.system.domain.SysOperLog;

/**
 * Description:系统操作日志数据层声明
 * User: zhanghj
 * Date: 2020-11-05
 * Time: 14:25
 */
public interface SysOperLogMapper {
    /**
     * 新增操作日志
     *
     * @param operLog 操作日志对象
     */
    public void insertOperlog(SysOperLog operLog);
}
