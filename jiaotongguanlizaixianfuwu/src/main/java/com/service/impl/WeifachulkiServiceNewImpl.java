package com.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.WeifachulkiDao;
import com.dao.WeifachulkiNewDao;
import com.entity.WeifachulkiEntity;
import com.entity.WeifachulkiNewEntity;
import com.entity.view.WeifachulkiNewView;
import com.entity.view.WeifachulkiView;
import com.service.WeifachulkiNewService;
import com.service.WeifachulkiService;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

/**
 * 违法处理业务 服务实现类
 */
@Service("weifachulkiNewService")
@Transactional
public class WeifachulkiServiceNewImpl extends ServiceImpl<WeifachulkiNewDao, WeifachulkiNewEntity> implements WeifachulkiNewService {

    @Override
    public PageUtils queryPage(Map<String,Object> params) {
        if(params != null && (params.get("limit") == null || params.get("page") == null)){
            params.put("page","1");
            params.put("limit","10");
        }
        Page<WeifachulkiNewView> page =new Query<WeifachulkiNewView>(params).getPage();
        page.setRecords(baseMapper.selectListView(page,params));
        return new PageUtils(page);
    }


}
