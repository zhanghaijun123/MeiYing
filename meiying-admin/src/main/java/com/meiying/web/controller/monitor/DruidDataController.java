package com.meiying.web.controller.monitor;

import com.meiying.common.core.controller.BaseController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Description:连接池数据监控
 * User: zhanghj
 * Date: 2020-11-17
 * Time: 14:55
 */
@Controller
@RequestMapping("/monitor/data")
public class DruidDataController extends BaseController {
    private String prefix = "/druid";

    @RequiresPermissions("monitor:data:view")
    @GetMapping()
    public String index()
    {
        return redirect(prefix + "/index");
    }
}
