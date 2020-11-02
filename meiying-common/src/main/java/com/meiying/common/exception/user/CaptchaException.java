package com.meiying.common.exception.user;

/**
 * Description:验证码以常
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 15:04
 */
public class CaptchaException extends UserException {
    private static final long serialVersionUID = 1L;

    public CaptchaException()
    {
        super("user.jcaptcha.error", null);
    }
}
