package com.meiying.system.service;

/**
 * Description:字典数据服务层申明
 * User: zhanghj
 * Date: 2020-11-06
 * Time: 10:18
 */
public interface ISysDictDataService {
    /**
     * 根据字典类型和字典键值查询字典数据信息
     *
     * @param dictType 字典类型
     * @param dictValue 字典键值
     * @return 字典标签
     */
    public String selectDictLabel(String dictType, String dictValue);
}
