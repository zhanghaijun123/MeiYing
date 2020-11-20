package com.meiying.system.mapper;

import com.meiying.system.domain.SysOperLog;

import java.util.List;

/**
 * Description:系统操作日志数据层声明
 * User: zhanghj
 * Date: 2020-11-05
 * Time: 14:25
 */
public interface SysOperLogMapper {
    /**
     * 新增操作日志
     *
     * @param operLog 操作日志对象
     */
    public void insertOperlog(SysOperLog operLog);
    /**
     * 查询系统操作日志集合
     *
     * @param operLog 操作日志对象
     * @return 操作日志集合
     */
    public List<SysOperLog> selectOperLogList(SysOperLog operLog);
    /**
     * 批量删除系统操作日志
     *
     * @param ids 需要删除的数据
     * @return 结果
     */
    public int deleteOperLogByIds(String[] ids);
    /**
     * 清空操作日志
     */
    public void cleanOperLog();
    /**
     * 查询操作日志详细
     *
     * @param operId 操作ID
     * @return 操作日志对象
     */
    public SysOperLog selectOperLogById(String operId);
}
