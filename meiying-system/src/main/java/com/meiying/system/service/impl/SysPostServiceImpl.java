package com.meiying.system.service.impl;

import com.meiying.common.utils.StringUtils;
import com.meiying.system.domain.SysPost;
import com.meiying.system.mapper.SysPostMapper;
import com.meiying.system.service.ISysPostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Description:岗位模块接口服务实现层
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 18:39
 */
@Service
public class SysPostServiceImpl implements ISysPostService {
    @Autowired
    private SysPostMapper postMapper;
    /**
     * 查询所有岗位
     *
     * @return 岗位列表
     */
    @Override
    public List<SysPost> selectPostAll()
    {
        return postMapper.selectPostAll();
    }
    /**
     * 根据用户ID查询岗位
     *
     * @param userId 用户ID
     * @return 岗位列表
     */
    @Override
    public List<SysPost> selectPostsByUserId(String userId)
    {
        List<SysPost> userPosts = postMapper.selectPostsByUserId(userId);
        List<SysPost> posts = postMapper.selectPostAll();
        for (SysPost post : posts)
        {
            for (SysPost userRole : userPosts)
            {
                if (StringUtils.equals(post.getPostId(),userRole.getPostId()))
                {
                    post.setFlag(true);
                    break;
                }
            }
        }
        return posts;
    }
}
