package com.meiying.system.service.impl;

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
}
