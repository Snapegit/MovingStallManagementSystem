package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.TejiashangpinEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.TejiashangpinView;


/**
 * 特价商品
 *
 * @author 
 * @email 
 * @date 2024-01-31 21:02:04
 */
public interface TejiashangpinService extends IService<TejiashangpinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TejiashangpinView> selectListView(Wrapper<TejiashangpinEntity> wrapper);
   	
   	TejiashangpinView selectView(@Param("ew") Wrapper<TejiashangpinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TejiashangpinEntity> wrapper);
   	

}

