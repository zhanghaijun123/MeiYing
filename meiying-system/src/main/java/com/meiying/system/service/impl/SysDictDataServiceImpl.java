package com.meiying.system.service.impl;

import com.meiying.system.mapper.SysDictDataMapper;
import com.meiying.system.service.ISysDictDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Description:字典数据服务层实现
 * User: zhanghj
 * Date: 2020-11-06
 * Time: 10:19
 */
@Service
public class SysDictDataServiceImpl implements ISysDictDataService {
    @Autowired
    private SysDictDataMapper dictDataMapper;
    /**
     * 根据字典类型和字典键值查询字典数据信息
     *
     * @param dictType 字典类型
     * @param dictValue 字典键值
     * @return 字典标签
     */
    @Override
    public String selectDictLabel(String dictType, String dictValue)
    {
        return dictDataMapper.selectDictLabel(dictType, dictValue);
    }
}
