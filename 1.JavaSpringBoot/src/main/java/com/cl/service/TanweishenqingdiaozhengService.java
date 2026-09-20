package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.TanweishenqingdiaozhengEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.TanweishenqingdiaozhengView;


/**
 * 摊位申请调整
 *
 * @author 
 * @email 
 * @date 2024-01-31 21:02:04
 */
public interface TanweishenqingdiaozhengService extends IService<TanweishenqingdiaozhengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TanweishenqingdiaozhengView> selectListView(Wrapper<TanweishenqingdiaozhengEntity> wrapper);
   	
   	TanweishenqingdiaozhengView selectView(@Param("ew") Wrapper<TanweishenqingdiaozhengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TanweishenqingdiaozhengEntity> wrapper);
   	

}

