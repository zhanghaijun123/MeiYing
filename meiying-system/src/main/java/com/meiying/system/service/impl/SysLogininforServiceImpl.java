package com.meiying.system.service.impl;

import com.meiying.system.domain.SysLogininfor;
import com.meiying.system.mapper.SysLogininforMapper;
import com.meiying.system.service.ISysLogininforService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Description:系统访问日志情况信息 服务层处理
 * User: zhanghj
 * Date: 2020-10-09
 * Time: 16:18
 */
@Service
public class SysLogininforServiceImpl implements ISysLogininforService {
    @Autowired
    private SysLogininforMapper logininforMapper;
    /**
     * 新增系统登录日志
     *
     * @param logininfor 访问日志对象
     */
    @Override
    public void insertLogininfor(SysLogininfor logininfor)
    {
        logininforMapper.insertLogininfor(logininfor);
    }
}
