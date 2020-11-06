package com.meiying.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * Description:用户和岗位关联表实体类
 * User: zhanghj
 * Date: 2020-11-06
 * Time: 16:12
 */
public class SysUserPost {
    /** 用户ID */
    private String userId;

    /** 岗位ID */
    private String postId;

    public String getUserId()
    {
        return userId;
    }

    public void setUserId(String userId)
    {
        this.userId = userId;
    }

    public String getPostId()
    {
        return postId;
    }

    public void setPostId(String postId)
    {
        this.postId = postId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("userId", getUserId())
                .append("postId", getPostId())
                .toString();
    }
}
