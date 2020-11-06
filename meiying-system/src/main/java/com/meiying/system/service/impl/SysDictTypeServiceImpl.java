package com.meiying.system.service.impl;

import com.meiying.common.utils.DictUtils;
import com.meiying.common.utils.StringUtils;
import com.meiying.common.core.domain.entity.SysDictData;
import com.meiying.system.mapper.SysDictDataMapper;
import com.meiying.system.service.ISysDictTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Description: 字典类型实现类
 * User: zhanghj
 * Date: 2020-11-06
 * Time: 10:15
 */
@Service
public class SysDictTypeServiceImpl implements ISysDictTypeService {
    @Autowired
    private SysDictDataMapper dictDataMapper;
    /**
     * 根据字典类型查询字典数据
     *
     * @param dictType 字典类型
     * @return 字典数据集合信息
     */
    @Override
    public List<SysDictData> selectDictDataByType(String dictType)
    {
        List<SysDictData> dictDatas = DictUtils.getDictCache(dictType);
        if (StringUtils.isNotEmpty(dictDatas))
        {
            return dictDatas;
        }
        dictDatas = dictDataMapper.selectDictDataByType(dictType);
        if (StringUtils.isNotEmpty(dictDatas))
        {
            DictUtils.setDictCache(dictType, dictDatas);
            return dictDatas;
        }
        return null;
    }
}
