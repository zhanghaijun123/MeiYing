package com.meiying.web.controller.system;

import com.meiying.common.core.controller.BaseController;
import com.meiying.system.domain.SysUser;
import com.meiying.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

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
    /**
     * 进去用户列表页面
     */
    @GetMapping()
    public String user(){
        return prefix+"/user";
    }
    /**
     * 查询所有用户(后期分页)
     */
    @GetMapping("/list")
    @ResponseBody
    public List<SysUser> list(){
        List<SysUser> list=userService.selectUserList();
        return list;
    }
    @GetMapping("/getUser")
    @ResponseBody
    public SysUser getUser(){
        SysUser sysUser=userService.selectUserById("1");
        System.out.println(sysUser.toString());
        return sysUser;
    }
}
