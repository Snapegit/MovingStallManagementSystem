package com.cl.dao;

import com.cl.entity.TejiashangpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.TejiashangpinView;


/**
 * 特价商品
 * 
 * @author 
 * @email 
 * @date 2024-01-31 21:02:04
 */
public interface TejiashangpinDao extends BaseMapper<TejiashangpinEntity> {
	
	List<TejiashangpinView> selectListView(@Param("ew") Wrapper<TejiashangpinEntity> wrapper);

	List<TejiashangpinView> selectListView(Pagination page,@Param("ew") Wrapper<TejiashangpinEntity> wrapper);
	
	TejiashangpinView selectView(@Param("ew") Wrapper<TejiashangpinEntity> wrapper);
	

}
