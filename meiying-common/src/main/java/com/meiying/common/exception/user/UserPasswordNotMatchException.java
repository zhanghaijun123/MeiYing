package com.meiying.common.exception.user;

/**
 * Description:用户密码不匹配异常
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 15:16
 */
public class UserPasswordNotMatchException extends UserException {
    private static final long serialVersionUID = 1L;

    public UserPasswordNotMatchException()
    {
        super("user.password.not.match", null);
    }
}
