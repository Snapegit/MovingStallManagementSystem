package com.cl.dao;

import com.cl.entity.DiscusstejiashangpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DiscusstejiashangpinView;


/**
 * 特价商品评论表
 * 
 * @author 
 * @email 
 * @date 2024-01-31 21:02:05
 */
public interface DiscusstejiashangpinDao extends BaseMapper<DiscusstejiashangpinEntity> {
	
	List<DiscusstejiashangpinView> selectListView(@Param("ew") Wrapper<DiscusstejiashangpinEntity> wrapper);

	List<DiscusstejiashangpinView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusstejiashangpinEntity> wrapper);
	
	DiscusstejiashangpinView selectView(@Param("ew") Wrapper<DiscusstejiashangpinEntity> wrapper);
	

}
