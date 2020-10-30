package com.meiying.system.mapper;

import com.meiying.system.domain.SysConfig;

/**
 * Description:参数配置 数据层
 * User: zhanghj
 * Date: 2020-10-10
 * Time: 11:32
 */
public interface SysConfigMapper {
    /**
     * 查询参数配置信息
     *
     * @param config 参数配置信息
     * @return 参数配置信息
     */
    public SysConfig selectConfig(SysConfig config);
}
