package com.cl.dao;

import com.cl.entity.TanweishenqingdiaozhengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.TanweishenqingdiaozhengView;


/**
 * 摊位申请调整
 * 
 * @author 
 * @email 
 * @date 2024-01-31 21:02:04
 */
public interface TanweishenqingdiaozhengDao extends BaseMapper<TanweishenqingdiaozhengEntity> {
	
	List<TanweishenqingdiaozhengView> selectListView(@Param("ew") Wrapper<TanweishenqingdiaozhengEntity> wrapper);

	List<TanweishenqingdiaozhengView> selectListView(Pagination page,@Param("ew") Wrapper<TanweishenqingdiaozhengEntity> wrapper);
	
	TanweishenqingdiaozhengView selectView(@Param("ew") Wrapper<TanweishenqingdiaozhengEntity> wrapper);
	

}
