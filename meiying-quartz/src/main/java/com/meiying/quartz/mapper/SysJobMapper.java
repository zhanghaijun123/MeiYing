package com.meiying.quartz.mapper;

import com.meiying.quartz.domain.SysJob;

import java.util.List;

/**
 * Description:
 * User: zhanghj
 * Date: 2020-11-17
 * Time: 16:00
 */
public interface SysJobMapper {
    /**
     * 查询调度任务日志集合
     *
     * @param job 调度信息
     * @return 操作日志集合
     */
    public List<SysJob> selectJobList(SysJob job);
    /**
     * 新增调度任务信息
     *
     * @param job 调度任务信息
     * @return 结果
     */
    public int insertJob(SysJob job);
    /**
     * 通过调度ID查询调度任务信息
     *
     * @param jobId 调度ID
     * @return 角色对象信息
     */
    public SysJob selectJobById(String jobId);
    /**
     * 修改调度任务信息
     *
     * @param job 调度任务信息
     * @return 结果
     */
    public int updateJob(SysJob job);
    /**
     * 通过调度ID删除调度任务信息
     *
     * @param jobId 调度ID
     * @return 结果
     */
    public int deleteJobById(String jobId);
}
