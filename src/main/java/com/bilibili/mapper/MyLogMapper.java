package com.bilibili.mapper;

import com.bilibili.domain.AdminLog;
import com.bilibili.query.AdminLogQuery;
import com.bilibili.query.UserQuery;

import java.util.List;


public interface MyLogMapper {

    void insert(AdminLog adminLog);

    List<AdminLog> loadAll(AdminLogQuery adminLogQuery);
    Integer queryCount(AdminLogQuery adminLogQuery);
}