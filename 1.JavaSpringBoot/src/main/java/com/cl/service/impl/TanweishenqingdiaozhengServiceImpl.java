package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.TanweishenqingdiaozhengDao;
import com.cl.entity.TanweishenqingdiaozhengEntity;
import com.cl.service.TanweishenqingdiaozhengService;
import com.cl.entity.view.TanweishenqingdiaozhengView;

@Service("tanweishenqingdiaozhengService")
public class TanweishenqingdiaozhengServiceImpl extends ServiceImpl<TanweishenqingdiaozhengDao, TanweishenqingdiaozhengEntity> implements TanweishenqingdiaozhengService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TanweishenqingdiaozhengEntity> page = this.selectPage(
                new Query<TanweishenqingdiaozhengEntity>(params).getPage(),
                new EntityWrapper<TanweishenqingdiaozhengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<TanweishenqingdiaozhengEntity> wrapper) {
		  Page<TanweishenqingdiaozhengView> page =new Query<TanweishenqingdiaozhengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<TanweishenqingdiaozhengView> selectListView(Wrapper<TanweishenqingdiaozhengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public TanweishenqingdiaozhengView selectView(Wrapper<TanweishenqingdiaozhengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
