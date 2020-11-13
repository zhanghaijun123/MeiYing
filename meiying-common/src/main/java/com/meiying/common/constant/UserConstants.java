package com.meiying.common.constant;

/**
 * Description:用户常量信息
 * User: zhanghj
 * Date: 2020-11-02
 * Time: 15:12
 */
public class UserConstants {
    /**
     * 用户名长度限制
     */
    public static final int USERNAME_MIN_LENGTH = 2;
    public static final int USERNAME_MAX_LENGTH = 20;
    /**
     * 密码长度限制
     */
    public static final int PASSWORD_MIN_LENGTH = 5;
    public static final int PASSWORD_MAX_LENGTH = 20;

    /** 登录名称是否唯一的返回结果码 */
    public final static String USER_NAME_UNIQUE = "0";
    public final static String USER_NAME_NOT_UNIQUE = "1";

    /** 手机号码是否唯一的返回结果 */
    public final static String USER_PHONE_UNIQUE = "0";
    public final static String USER_PHONE_NOT_UNIQUE = "1";

    /** e-mail 是否唯一的返回结果 */
    public final static String USER_EMAIL_UNIQUE = "0";
    public final static String USER_EMAIL_NOT_UNIQUE = "1";

    /** 角色名称是否唯一的返回结果码 */
    public final static String ROLE_NAME_UNIQUE = "0";
    public final static String ROLE_NAME_NOT_UNIQUE = "1";

    /** 角色权限是否唯一的返回结果码 */
    public final static String ROLE_KEY_UNIQUE = "0";
    public final static String ROLE_KEY_NOT_UNIQUE = "1";

    /** 菜单名称是否唯一的返回结果码 */
    public final static String MENU_NAME_UNIQUE = "0";
    public final static String MENU_NAME_NOT_UNIQUE = "1";

    /** 部门名称是否唯一的返回结果码 */
    public final static String DEPT_NAME_UNIQUE = "0";
    public final static String DEPT_NAME_NOT_UNIQUE = "1";

    /** 岗位名称是否唯一的返回结果码 */
    public final static String POST_NAME_UNIQUE = "0";
    public final static String POST_NAME_NOT_UNIQUE = "1";

    /** 岗位编码是否唯一的返回结果码 */
    public final static String POST_CODE_UNIQUE = "0";
    public final static String POST_CODE_NOT_UNIQUE = "1";

    /** 是否为系统默认（是） */
    public static final String YES = "Y";

    /** 部门正常状态 */
    public static final String DEPT_NORMAL = "0";
    /** 部门停用状态 */
    public static final String DEPT_DISABLE = "1";
}
