package com.meiying.common.exception.user;

/**
 * Description:角色锁定异常类
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 15:57
 */
public class RoleBlockedException extends UserException {
    private static final long serialVersionUID = 1L;

    public RoleBlockedException()
    {
        super("role.blocked", null);
    }
}
