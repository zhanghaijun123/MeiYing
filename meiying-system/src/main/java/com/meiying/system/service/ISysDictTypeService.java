package com.meiying.system.service;

import com.meiying.common.core.domain.entity.SysDictData;

import java.util.List;

/**
 * Description:字典类型服务申明
 * User: zhanghj
 * Date: 2020-11-06
 * Time: 10:15
 */
public interface ISysDictTypeService {
    /**
     * 根据字典类型查询字典数据
     *
     * @param dictType 字典类型
     * @return 字典数据集合信息
     */
    public List<SysDictData> selectDictDataByType(String dictType);
}
