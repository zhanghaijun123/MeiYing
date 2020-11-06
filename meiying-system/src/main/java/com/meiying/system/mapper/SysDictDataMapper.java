package com.meiying.system.mapper;

import com.meiying.common.core.domain.entity.SysDictData;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Description:系统字典数据数据层申明
 * User: zhanghj
 * Date: 2020-11-06
 * Time: 10:20
 */
public interface SysDictDataMapper {
    /**
     * 根据字典类型查询字典数据
     *
     * @param dictType 字典类型
     * @return 字典数据集合信息
     */
    public List<SysDictData> selectDictDataByType(String dictType);
    /**
     * 根据字典类型和字典键值查询字典数据信息
     *
     * @param dictType 字典类型
     * @param dictValue 字典键值
     * @return 字典标签
     */
    public String selectDictLabel(@Param("dictType") String dictType, @Param("dictValue") String dictValue);
}
