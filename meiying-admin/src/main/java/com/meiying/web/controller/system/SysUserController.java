package com.meiying.web.controller.system;

import com.meiying.common.annotation.Log;
import com.meiying.common.constant.UserConstants;
import com.meiying.common.core.controller.BaseController;
import com.meiying.common.core.domain.AjaxResult;
import com.meiying.common.core.domain.entity.SysUser;
import com.meiying.common.core.page.TableDataInfo;
import com.meiying.common.enums.BusinessType;
import com.meiying.common.utils.StringUtils;
import com.meiying.framework.shiro.service.SysPasswordService;
import com.meiying.framework.util.ShiroUtils;
import com.meiying.system.service.ISysPostService;
import com.meiying.system.service.ISysRoleService;
import com.meiying.system.service.ISysUserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Description: 用户前端控制器
 * User: zhanghj
 * Date: 2020-09-29
 * Time: 15:35
 */
@Controller
@RequestMapping("/system/user")
public class SysUserController extends BaseController {
    private String prefix="system/user";
    @Autowired
    private ISysUserService userService;
    @Autowired
    private ISysRoleService roleService;

    @Autowired
    private ISysPostService postService;
    @Autowired
    private SysPasswordService passwordService;
    /**
     * 进去用户列表页面
     */
    @GetMapping()
    public String user(){
        return prefix+"/user";
    }
    /**
     * 校验用户名
     */
    @PostMapping("/checkLoginNameUnique")
    @ResponseBody
    public String checkLoginNameUnique(SysUser user)
    {
        return userService.checkLoginNameUnique(user.getLoginName());
    }
    /**
     * 校验手机号码
     */
    @PostMapping("/checkPhoneUnique")
    @ResponseBody
    public String checkPhoneUnique(SysUser user)
    {
        return userService.checkPhoneUnique(user);
    }

    /**
     * 校验email邮箱
     */
    @PostMapping("/checkEmailUnique")
    @ResponseBody
    public String checkEmailUnique(SysUser user)
    {
        return userService.checkEmailUnique(user);
    }

    /**
     * 查询用户列表
     * @param user
     * @return
     */
    @RequiresPermissions("system:user:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysUser user)
    {
        startPage();
        List<SysUser> list = userService.selectUserList(user);
        return getDataTable(list);
    }
    /**
     * 去新增用户页面
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
        mmap.put("roles", roleService.selectRoleAll().stream().filter(r -> !r.isAdmin()).collect(Collectors.toList()));
        mmap.put("posts", postService.selectPostAll());
        return prefix + "/add";
    }

    /**
     * 新增保存用户
     */
    @RequiresPermissions("system:user:add")
    @Log(title = "用户管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@Validated SysUser user)
    {
        if (UserConstants.USER_NAME_NOT_UNIQUE.equals(userService.checkLoginNameUnique(user.getLoginName())))
        {
            return error("新增用户'" + user.getLoginName() + "'失败，登录账号已存在");
        }
        else if (StringUtils.isNotEmpty(user.getPhonenumber())
                && UserConstants.USER_PHONE_NOT_UNIQUE.equals(userService.checkPhoneUnique(user)))
        {
            return error("新增用户'" + user.getLoginName() + "'失败，手机号码已存在");
        }
        else if (StringUtils.isNotEmpty(user.getEmail())
                && UserConstants.USER_EMAIL_NOT_UNIQUE.equals(userService.checkEmailUnique(user)))
        {
            return error("新增用户'" + user.getLoginName() + "'失败，邮箱账号已存在");
        }
        user.setSalt(ShiroUtils.randomSalt());
        user.setPassword(passwordService.encryptPassword(user.getLoginName(), user.getPassword(), user.getSalt()));
        user.setCreateBy(ShiroUtils.getLoginName());
        return toAjax(userService.insertUser(user));
    }
}
