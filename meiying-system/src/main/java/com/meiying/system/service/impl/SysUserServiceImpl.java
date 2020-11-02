package com.meiying.system.service.impl;

import com.meiying.common.utils.StringUtils;
import com.meiying.system.domain.SysPost;
import com.meiying.system.domain.SysRole;
import com.meiying.system.domain.SysUser;
import com.meiying.system.mapper.SysPostMapper;
import com.meiying.system.mapper.SysRoleMapper;
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
    @Autowired
    private SysRoleMapper roleMapper;
    @Autowired
    private SysPostMapper postMapper;

    /**
     * 查询所有用户
     * @return
     */
    @Override
    public List<SysUser> selectUserList() {
        return userMapper.selectUserList();
    }

    /**
     * 根据id查询单个用户
     * @param s
     * @return
     */
    @Override
    public SysUser selectUserById(String s) {
        return userMapper.selectUserById(s);
    }

    /**
     * 根据登陆名查询用
     * @param userName
     * @return
     */
    @Override
    public SysUser selectUserByLoginName(String userName) {
        return userMapper.selectUserByLoginName(userName);
    }

    /**
     * 更新用户信息
     * @param user
     */
    @Override
    public int updateUserInfo(SysUser user) {
        return userMapper.updateUser(user);
    }
    /**
     * 查询用户所属角色组
     *
     * @param userId 用户ID
     * @return 结果
     */
    @Override
    public String selectUserRoleGroup(String userId)
    {
        List<SysRole> list = roleMapper.selectRolesByUserId(userId);
        StringBuffer idsStr = new StringBuffer();
        for (SysRole role : list)
        {
            idsStr.append(role.getRoleName()).append(",");
        }
        if (StringUtils.isNotEmpty(idsStr.toString()))
        {
            return idsStr.substring(0, idsStr.length() - 1);
        }
        return idsStr.toString();
    }
    /**
     * 查询用户所属岗位组
     *
     * @param userId 用户ID
     * @return 结果
     */
    @Override
    public String selectUserPostGroup(String userId)
    {
        List<SysPost> list = postMapper.selectPostsByUserId(userId);
        StringBuffer idsStr = new StringBuffer();
        for (SysPost post : list)
        {
            idsStr.append(post.getPostName()).append(",");
        }
        if (StringUtils.isNotEmpty(idsStr.toString()))
        {
            return idsStr.substring(0, idsStr.length() - 1);
        }
        return idsStr.toString();
    }

}
