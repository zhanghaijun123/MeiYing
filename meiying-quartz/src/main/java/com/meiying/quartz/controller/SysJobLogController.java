package com.meiying.quartz.controller;

import com.meiying.common.annotation.Log;
import com.meiying.common.core.controller.BaseController;
import com.meiying.common.core.domain.AjaxResult;
import com.meiying.common.core.page.TableDataInfo;
import com.meiying.common.enums.BusinessType;
import com.meiying.common.utils.StringUtils;
import com.meiying.common.utils.poi.ExcelUtil;
import com.meiying.quartz.domain.SysJob;
import com.meiying.quartz.domain.SysJobLog;
import com.meiying.quartz.service.ISysJobLogService;
import com.meiying.quartz.service.ISysJobService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Description:定时任务日志控制器
 * User: zhanghj
 * Date: 2020-11-20
 * Time: 17:32
 */
@Controller
@RequestMapping("monitor/jobLog")
public class SysJobLogController extends BaseController {
    private String prefix = "monitor/job";

    @Autowired
    private ISysJobService jobService;

    @Autowired
    private ISysJobLogService jobLogService;
    /**
     * 进入定时任务日志列表页面
     * @param jobId
     * @param mmap
     * @return
     */
    @RequiresPermissions("monitor:job:view")
    @GetMapping()
    public String jobLog(@RequestParam(value = "jobId", required = false) String jobId, ModelMap mmap)
    {
        if (StringUtils.isNotNull(jobId))
        {
            SysJob job = jobService.selectJobById(jobId);
            mmap.put("job", job);
        }
        return prefix + "/jobLog";
    }

    /**
     * 查询日志列表
     * @param jobLog
     * @return
     */
    @RequiresPermissions("monitor:job:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysJobLog jobLog)
    {
        startPage();
        List<SysJobLog> list = jobLogService.selectJobLogList(jobLog);
        return getDataTable(list);
    }

    /**
     * 删除调度日志
     * @param ids
     * @return
     */
    @Log(title = "调度日志", businessType = BusinessType.DELETE)
    @RequiresPermissions("monitor:job:remove")
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(jobLogService.deleteJobLogByIds(ids));
    }

    /**
     * 清空调度日志
     * @return
     */
    @Log(title = "调度日志", businessType = BusinessType.CLEAN)
    @RequiresPermissions("monitor:job:remove")
    @PostMapping("/clean")
    @ResponseBody
    public AjaxResult clean()
    {
        jobLogService.cleanJobLog();
        return success();
    }

    /**
     * 导出调度日志
     * @param jobLog
     * @return
     */
    @Log(title = "调度日志", businessType = BusinessType.EXPORT)
    @RequiresPermissions("monitor:job:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysJobLog jobLog)
    {
        List<SysJobLog> list = jobLogService.selectJobLogList(jobLog);
        ExcelUtil<SysJobLog> util = new ExcelUtil<SysJobLog>(SysJobLog.class);
        return util.exportExcel(list, "调度日志");
    }

    /**
     * 日志详细信息
     * @param jobLogId
     * @param mmap
     * @return
     */
    @RequiresPermissions("monitor:job:detail")
    @GetMapping("/detail/{jobLogId}")
    public String detail(@PathVariable("jobLogId") String jobLogId, ModelMap mmap)
    {
        mmap.put("name", "jobLog");
        mmap.put("jobLog", jobLogService.selectJobLogById(jobLogId));
        return prefix + "/detail";
    }
}
