package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.entity.NewsEntity;
import com.entity.WeifachulkiEntity;
import com.entity.WeifachulkiNewEntity;
import com.utils.PageUtils;

import java.util.Map;

/**
 * 违法处理业务 服务类
 */

public interface WeifachulkiNewService extends IService<WeifachulkiNewEntity> {

    /**
     * @param params 查询参数
     * @return 带分页的查询出来的数据
     */
    PageUtils queryPage(Map<String, Object> params);
}