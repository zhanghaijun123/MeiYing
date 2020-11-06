package com.meiying.system.mapper;

import com.meiying.system.domain.SysPost;

import java.util.List;

/**
 * Description:
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 18:40
 */
public interface SysPostMapper {
    /**
     * 根据用户ID查询岗位
     *
     * @param userId 用户ID
     * @return 岗位列表
     */
    public List<SysPost> selectPostsByUserId(String userId);
    /**
     * 查询所有岗位
     *
     * @return 岗位列表
     */
    public List<SysPost> selectPostAll();
}
