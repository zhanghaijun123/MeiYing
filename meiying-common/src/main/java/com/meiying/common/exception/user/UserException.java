package com.meiying.common.exception.user;

import com.meiying.common.exception.base.BaseException;

/**
 * Description:用户信息类异常
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 15:02
 */
public class UserException extends BaseException {
    public UserException(String code, Object[] args) {
        super("user", code, args, null);
    }
}
