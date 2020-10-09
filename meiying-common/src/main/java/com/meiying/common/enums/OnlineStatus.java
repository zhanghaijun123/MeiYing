package com.meiying.common.enums;

/**
 * Description: 用户会话状体枚举类
 * User: zhanghj
 * Date: 2020-10-09
 * Time: 10:09
 */
public enum OnlineStatus {
    /** 用户状态 */
    on_line("在线"), off_line("离线");

    private final String info;

    private OnlineStatus(String info)
    {
        this.info = info;
    }

    public String getInfo()
    {
        return info;
    }
}
