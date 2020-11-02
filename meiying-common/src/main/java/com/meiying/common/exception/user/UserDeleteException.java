package com.meiying.common.exception.user;

/**
 * Description:用户账号已被删除
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 15:30
 */
public class UserDeleteException extends UserException {
    private static final long serialVersionUID = 1L;

    public UserDeleteException()
    {
        super("user.password.delete", null);
    }
}
