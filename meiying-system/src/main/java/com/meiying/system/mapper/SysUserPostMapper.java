package com.meiying.system.mapper;

import com.meiying.system.domain.SysUserPost;

import java.util.List;

/**
 * Description:用户与岗位关联表数据层
 * User: zhanghj
 * Date: 2020-11-06
 * Time: 16:15
 */
public interface SysUserPostMapper {
    /**
     * 批量新增用户岗位信息
     *
     * @param userPostList 用户角色列表
     * @return 结果
     */
    public int batchUserPost(List<SysUserPost> userPostList);
    /**
     * 通过用户ID删除用户和岗位关联
     *
     * @param userId 用户ID
     * @return 结果
     */
    public int deleteUserPostByUserId(String userId);
    /**
     * 通过岗位ID查询岗位使用数量
     *
     * @param postId 岗位ID
     * @return 结果
     */
    public int countUserPostById(String postId);
}
