package com.meiying.common.exception.file;

/**
 * Description:文件名称超长限制类异常
 * User: zhanghj
 * Date: 2020-11-05
 * Time: 10:10
 */
public class FileNameLengthLimitExceededException extends FileException {
    private static final long serialVersionUID = 1L;

    public FileNameLengthLimitExceededException(int defaultFileNameLength)
    {
        super("upload.filename.exceed.length", new Object[] { defaultFileNameLength });
    }
}
