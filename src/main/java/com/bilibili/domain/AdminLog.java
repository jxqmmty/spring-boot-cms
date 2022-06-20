package com.bilibili.domain;

import lombok.Data;

import java.io.Serializable;

/**
 * 日志表
 * */
@Data
public class AdminLog implements Serializable {

    private static final long serialVersionUID = 7925874058046995566L;

    private Long id;
    private Long userId;//用户id 操作人ID
    private String userName;//用户名称 关联admin_user
    private String loginip;//登录ip
    private int type;//操作类型(0登录、1查询、2修改)
    private String url ; // 操作的url
    private String operation;//操作内容
    private String createtime;//操作时间
    private String remark;//备注
}