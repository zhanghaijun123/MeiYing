package com.meiying.system.service;

import com.meiying.system.domain.SysPost;

import java.util.List;

/**
 * Description:岗位模块服务接口申明
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 18:39
 */
public interface ISysPostService {
    /**
     * 查询所有岗位
     *
     * @return 岗位列表
     */
    public List<SysPost> selectPostAll();
}
