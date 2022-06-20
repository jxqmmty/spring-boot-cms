package com.bilibili.query;

import com.bilibili.basic.BaseQuery;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminLogQuery extends BaseQuery {

    private String userName;

}
