package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.TejiashangpinEntity;
import com.cl.entity.view.TejiashangpinView;

import com.cl.service.TejiashangpinService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;
import com.cl.service.StoreupService;
import com.cl.entity.StoreupEntity;

/**
 * 特价商品
 * 后端接口
 * @author 
 * @email 
 * @date 2024-01-31 21:02:04
 */
@RestController
@RequestMapping("/tejiashangpin")
public class TejiashangpinController {
    @Autowired
    private TejiashangpinService tejiashangpinService;

    @Autowired
    private StoreupService storeupService;


    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,TejiashangpinEntity tejiashangpin,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("shangjia")) {
			tejiashangpin.setShangjiazhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<TejiashangpinEntity> ew = new EntityWrapper<TejiashangpinEntity>();

		PageUtils page = tejiashangpinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, tejiashangpin), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,TejiashangpinEntity tejiashangpin, 
		HttpServletRequest request){
        EntityWrapper<TejiashangpinEntity> ew = new EntityWrapper<TejiashangpinEntity>();

		PageUtils page = tejiashangpinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, tejiashangpin), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( TejiashangpinEntity tejiashangpin){
       	EntityWrapper<TejiashangpinEntity> ew = new EntityWrapper<TejiashangpinEntity>();
      	ew.allEq(MPUtil.allEQMapPre( tejiashangpin, "tejiashangpin")); 
        return R.ok().put("data", tejiashangpinService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(TejiashangpinEntity tejiashangpin){
        EntityWrapper< TejiashangpinEntity> ew = new EntityWrapper< TejiashangpinEntity>();
 		ew.allEq(MPUtil.allEQMapPre( tejiashangpin, "tejiashangpin")); 
		TejiashangpinView tejiashangpinView =  tejiashangpinService.selectView(ew);
		return R.ok("查询特价商品成功").put("data", tejiashangpinView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        TejiashangpinEntity tejiashangpin = tejiashangpinService.selectById(id);
		tejiashangpin = tejiashangpinService.selectView(new EntityWrapper<TejiashangpinEntity>().eq("id", id));
        return R.ok().put("data", tejiashangpin);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        TejiashangpinEntity tejiashangpin = tejiashangpinService.selectById(id);
		tejiashangpin = tejiashangpinService.selectView(new EntityWrapper<TejiashangpinEntity>().eq("id", id));
        return R.ok().put("data", tejiashangpin);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody TejiashangpinEntity tejiashangpin, HttpServletRequest request){
    	tejiashangpin.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(tejiashangpin);
        tejiashangpinService.insert(tejiashangpin);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody TejiashangpinEntity tejiashangpin, HttpServletRequest request){
    	tejiashangpin.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(tejiashangpin);
        tejiashangpinService.insert(tejiashangpin);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody TejiashangpinEntity tejiashangpin, HttpServletRequest request){
        //ValidatorUtils.validateEntity(tejiashangpin);
        tejiashangpinService.updateById(tejiashangpin);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        tejiashangpinService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
