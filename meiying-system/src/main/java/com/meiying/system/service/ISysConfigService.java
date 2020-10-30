package com.meiying.system.service;

/**
 * Description:参数配置 服务层
 * User: zhanghj
 * Date: 2020-10-10
 * Time: 11:25
 */
public interface ISysConfigService {
    /**
     * 根据键名查询参数配置信息
     *
     * @param configKey 参数键名
     * @return 参数键值
     */
    public String selectConfigByKey(String configKey);
}
