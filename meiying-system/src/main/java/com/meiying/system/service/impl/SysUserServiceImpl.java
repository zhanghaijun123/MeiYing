package com.meiying.system.service.impl;

import com.meiying.system.domain.SysUser;
import com.meiying.system.mapper.SysUserMapper;
import com.meiying.system.service.ISysUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Description: 用户模块业务实现
 * User: zhanghj
 * Date: 2020-09-29
 * Time: 15:58
 */
@Service
public class SysUserServiceImpl implements ISysUserService {
    private static final Logger log = LoggerFactory.getLogger(SysUserServiceImpl.class);

    @Autowired
    private SysUserMapper userMapper;
    @Override
    public List<SysUser> selectUserList() {
        return userMapper.selectUserList();
    }

    @Override
    public SysUser selectUserById(String s) {
        return userMapper.selectUserById(s);
    }
}
