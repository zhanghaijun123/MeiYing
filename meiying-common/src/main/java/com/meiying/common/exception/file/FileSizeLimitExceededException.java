package com.meiying.common.exception.file;

/**
 * Description:文件大小限制类异常
 * User: zhanghj
 * Date: 2020-11-05
 * Time: 10:13
 */
public class FileSizeLimitExceededException extends FileException {
    private static final long serialVersionUID = 1L;

    public FileSizeLimitExceededException(long defaultMaxSize)
    {
        super("upload.exceed.maxSize", new Object[] { defaultMaxSize });
    }
}
