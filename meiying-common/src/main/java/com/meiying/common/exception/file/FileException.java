package com.meiying.common.exception.file;

import com.meiying.common.exception.base.BaseException;

/**
 * Description:文件类异常
 * User: zhanghj
 * Date: 2020-11-05
 * Time: 10:08
 */
public class FileException extends BaseException {
    private static final long serialVersionUID = 1L;

    public FileException(String code, Object[] args)
    {
        super("file", code, args, null);
    }
}
