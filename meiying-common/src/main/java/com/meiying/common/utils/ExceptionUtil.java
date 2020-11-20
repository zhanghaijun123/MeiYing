package com.meiying.common.utils;

import java.io.PrintWriter;
import java.io.StringWriter;

/**
 * Description:错误信息处理工具类
 * User: zhanghj
 * Date: 2020-11-18
 * Time: 15:42
 */
public class ExceptionUtil {
    /**
     * 获取exception的详细错误信息。
     */
    public static String getExceptionMessage(Throwable e)
    {
        StringWriter sw = new StringWriter();
        e.printStackTrace(new PrintWriter(sw, true));
        String str = sw.toString();
        return str;
    }
}
