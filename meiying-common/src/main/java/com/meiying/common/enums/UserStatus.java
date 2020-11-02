package com.meiying.common.enums;

/**
 * Description:用户状态枚举类
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 15:26
 */
public enum UserStatus {
    OK("0", "正常"), DISABLE("1", "停用"), DELETED("2", "删除");

    private final String code;
    private final String info;

    UserStatus(String code, String info)
    {
        this.code = code;
        this.info = info;
    }

    public String getCode()
    {
        return code;
    }

    public String getInfo()
    {
        return info;
    }
}
