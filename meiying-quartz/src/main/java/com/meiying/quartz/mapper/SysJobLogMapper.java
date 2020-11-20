package com.meiying.quartz.mapper;

import com.meiying.quartz.domain.SysJobLog;

import java.util.List;

/**
 * Description:定时任务日志数据层接口
 * User: zhanghj
 * Date: 2020-11-18
 * Time: 15:40
 */
public interface SysJobLogMapper {
    /**
     * 新增任务日志
     *
     * @param jobLog 调度日志信息
     * @return 结果
     */
    public int insertJobLog(SysJobLog jobLog);
    /**
     * 获取quartz调度器日志的计划任务
     *
     * @param jobLog 调度日志信息
     * @return 调度任务日志集合
     */
    public List<SysJobLog> selectJobLogList(SysJobLog jobLog);
    /**
     * 批量删除调度日志信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobLogByIds(String[] ids);
    /**
     * 清空任务日志
     */
    public void cleanJobLog();
    /**
     * 通过调度任务日志ID查询调度信息
     *
     * @param jobLogId 调度任务日志ID
     * @return 调度任务日志对象信息
     */
    public SysJobLog selectJobLogById(String jobLogId);
}
