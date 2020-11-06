package com.meiying.common.annotation;

import java.lang.annotation.*;

/**
 * Description:数据权限过滤注解
 * User: zhanghj
 * Date: 2020-11-06
 * Time: 13:58
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface DataScope {
    /**
     * 部门表的别名
     */
    public String deptAlias() default "";

    /**
     * 用户表的别名
     */
    public String userAlias() default "";
}
