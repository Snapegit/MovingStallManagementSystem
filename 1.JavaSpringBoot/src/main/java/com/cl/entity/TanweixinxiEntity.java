package com.cl.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 摊位信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-01-31 21:02:04
 */
@TableName("tanweixinxi")
public class TanweixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public TanweixinxiEntity() {
		
	}
	
	public TanweixinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 摊位名称
	 */
					
	private String tanweimingcheng;
	
	/**
	 * 封面
	 */
					
	private String fengmian;
	
	/**
	 * 摊位位置
	 */
					
	private String tanweiweizhi;
	
	/**
	 * 月租金
	 */
					
	private Double yuezujin;
	
	/**
	 * 面积
	 */
					
	private Double mianji;
	
	/**
	 * 摊位状态
	 */
					
	private String tanweizhuangtai;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：摊位名称
	 */
	public void setTanweimingcheng(String tanweimingcheng) {
		this.tanweimingcheng = tanweimingcheng;
	}
	/**
	 * 获取：摊位名称
	 */
	public String getTanweimingcheng() {
		return tanweimingcheng;
	}
	/**
	 * 设置：封面
	 */
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
	/**
	 * 设置：摊位位置
	 */
	public void setTanweiweizhi(String tanweiweizhi) {
		this.tanweiweizhi = tanweiweizhi;
	}
	/**
	 * 获取：摊位位置
	 */
	public String getTanweiweizhi() {
		return tanweiweizhi;
	}
	/**
	 * 设置：月租金
	 */
	public void setYuezujin(Double yuezujin) {
		this.yuezujin = yuezujin;
	}
	/**
	 * 获取：月租金
	 */
	public Double getYuezujin() {
		return yuezujin;
	}
	/**
	 * 设置：面积
	 */
	public void setMianji(Double mianji) {
		this.mianji = mianji;
	}
	/**
	 * 获取：面积
	 */
	public Double getMianji() {
		return mianji;
	}
	/**
	 * 设置：摊位状态
	 */
	public void setTanweizhuangtai(String tanweizhuangtai) {
		this.tanweizhuangtai = tanweizhuangtai;
	}
	/**
	 * 获取：摊位状态
	 */
	public String getTanweizhuangtai() {
		return tanweizhuangtai;
	}

}
