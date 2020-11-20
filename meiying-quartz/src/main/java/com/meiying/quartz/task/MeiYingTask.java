package com.meiying.quartz.task;

import com.meiying.common.utils.StringUtils;
import org.springframework.stereotype.Component;

/**
 * Description:定时调度任务
 * User: zhanghj
 * Date: 2020-11-20
 * Time: 10:11
 */
@Component("meiyingTask")
public class MeiYingTask {
    /**
     * 多参数定时测试
     * @param s
     * @param b
     * @param l
     * @param d
     * @param i
     */
    public void meiyingMultipleParams(String s, Boolean b, Long l, Double d, Integer i)
    {
        System.out.println(StringUtils.format("执行多参方法： 字符串类型{}，布尔类型{}，长整型{}，浮点型{}，整形{}", s, b, l, d, i));
    }

    /**
     * 单个参数定时测试
     * @param params
     */
    public void meiyingParams(String params)
    {
        System.out.println("执行有参方法：" + params);
    }

    /**
     * 无参定时测试
     */
    public void meiyingNoParams()
    {
        System.out.println("执行无参方法");
    }
}
