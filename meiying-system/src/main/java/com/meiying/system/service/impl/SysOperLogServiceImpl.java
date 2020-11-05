package com.meiying.system.service.impl;

import com.meiying.system.domain.SysOperLog;
import com.meiying.system.mapper.SysOperLogMapper;
import com.meiying.system.service.ISysOperLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Description:系统操作日志实现类
 * User: zhanghj
 * Date: 2020-11-05
 * Time: 14:24
 */
@Service
public class SysOperLogServiceImpl implements ISysOperLogService {
    @Autowired
    private SysOperLogMapper operLogMapper;

    /**
     * 新增操作日志
     *
     * @param operLog 操作日志对象
     */
    @Override
    public void insertOperlog(SysOperLog operLog)
    {
        operLogMapper.insertOperlog(operLog);
    }
}
