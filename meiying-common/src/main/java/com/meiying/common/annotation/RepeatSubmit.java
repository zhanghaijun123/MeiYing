package com.meiying.common.annotation;

import java.lang.annotation.*;

/**
 * Description:自定义注解，防止表单重复提交
 * User: zhanghj
 * Date: 2020-11-05
 * Time: 15:51
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface RepeatSubmit {
}
