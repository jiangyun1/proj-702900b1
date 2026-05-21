package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.NewsEntity;
import com.entity.WeifachulkiEntity;
import com.entity.WeifachulkiNewEntity;
import com.entity.view.NewsView;
import com.entity.view.WeifachulkiNewView;
import com.entity.view.WeifachulkiView;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 违法处理业务 Dao 接口
 *
 * @author 
 */
public interface  WeifachulkiNewDao extends BaseMapper<WeifachulkiNewEntity> {

   List<WeifachulkiNewView> selectListView(Pagination page, @Param("params")Map<String,Object> params);

}
