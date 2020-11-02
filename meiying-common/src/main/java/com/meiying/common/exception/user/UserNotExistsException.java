package com.meiying.common.exception.user;

/**
 * Description: 用户不存在异常
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 15:09
 */
public class UserNotExistsException extends UserException {
    private static final long serialVersionUID = 1L;

    public UserNotExistsException()
    {
        super("user.not.exists", null);
    }
}
