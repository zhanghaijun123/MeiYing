package com.meiying.web.controller.system;

import com.meiying.common.core.controller.BaseController;
import com.meiying.common.core.domain.Ztree;
import com.meiying.common.core.domain.entity.SysRole;
import com.meiying.framework.shiro.util.ShiroUtils;
import com.meiying.system.service.ISysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Description:菜单前端控制器
 * User: zhanghj
 * Date: 2020-11-11
 * Time: 14:51
 */
@Controller
@RequestMapping("/system/menu")
public class SysMenuController extends BaseController {
    private String prefix = "system/menu";

    @Autowired
    private ISysMenuService menuService;

    /**
     * 加载角色菜单列表树
     */
    @GetMapping("/roleMenuTreeData")
    @ResponseBody
    public List<Ztree> roleMenuTreeData(SysRole role)
    {
        String userId = ShiroUtils.getUserId();
        List<Ztree> ztrees = menuService.roleMenuTreeData(role, userId);
        return ztrees;
    }
}
