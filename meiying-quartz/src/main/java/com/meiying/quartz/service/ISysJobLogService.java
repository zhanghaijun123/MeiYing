package com.meiying.quartz.service;

import com.meiying.quartz.domain.SysJobLog;

import java.util.List;

/**
 * Description:定时任务调度日志接口申明
 * User: zhanghj
 * Date: 2020-11-18
 * Time: 15:30
 */
public interface ISysJobLogService {
    /**
     * 新增任务日志
     *
     * @param jobLog 调度日志信息
     */
    public void addJobLog(SysJobLog jobLog);
    /**
     * 获取quartz调度器日志列表
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
    public int deleteJobLogByIds(String ids);
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
