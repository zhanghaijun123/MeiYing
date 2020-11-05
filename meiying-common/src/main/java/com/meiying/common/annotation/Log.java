package com.meiying.common.annotation;

import com.meiying.common.enums.BusinessType;
import com.meiying.common.enums.OperatorType;

import java.lang.annotation.*;

/**
 * Description:自定义操作日志注解
 * User: zhanghj
 * Date: 2020-11-05
 * Time: 13:43
 */
@Target({ElementType.PARAMETER,ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Log {
    /**
     * 模块
     */
    public String title() default "";

    /**
     * 功能
     */
    public BusinessType businessType() default BusinessType.OTHER;

    /**
     * 操作人类别
     */
    public OperatorType operatorType() default OperatorType.MANAGE;

    /**
     * 是否保存请求的参数
     */
    public boolean isSaveRequestData() default true;
}
