package com.meiying.quartz.execution;

import com.meiying.quartz.domain.SysJob;
import com.meiying.quartz.util.JobInvokeUtil;
import org.quartz.DisallowConcurrentExecution;
import org.quartz.JobExecutionContext;

/**
 * Description:定时任务处理（禁止并发执行）
 * User: zhanghj
 * Date: 2020-11-18
 * Time: 15:54
 */
@DisallowConcurrentExecution
public class QuartzDisallowConcurrentExecution extends AbstractQuartzJob {
    @Override
    protected void doExecute(JobExecutionContext context, SysJob sysJob) throws Exception {
        JobInvokeUtil.invokeMethod(sysJob);
    }
}
