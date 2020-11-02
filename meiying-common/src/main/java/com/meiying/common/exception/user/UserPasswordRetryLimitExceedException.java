package com.meiying.common.exception.user;

/**
 * Description:用户密码错误超过限制
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 15:43
 */
public class UserPasswordRetryLimitExceedException extends UserException {
    private static final long serialVersionUID = 1L;

    public UserPasswordRetryLimitExceedException(int retryLimitCount)
    {
        super("user.password.retry.limit.exceed", new Object[] { retryLimitCount });
    }
}
