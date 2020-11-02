package com.meiying.common.exception.user;

/**
 * Description:用户锁定异常
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 15:31
 */
public class UserBlockedException extends UserException {
    private static final long serialVersionUID = 1L;

    public UserBlockedException()
    {
        super("user.blocked", null);
    }
}
