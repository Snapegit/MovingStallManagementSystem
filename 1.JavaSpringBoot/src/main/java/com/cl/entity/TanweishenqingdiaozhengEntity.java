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
 * 摊位申请调整
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-01-31 21:02:04
 */
@TableName("tanweishenqingdiaozheng")
public class TanweishenqingdiaozhengEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public TanweishenqingdiaozhengEntity() {
		
	}
	
	public TanweishenqingdiaozhengEntity(T t) {
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
	 * 原摊位名称
	 */
					
	private String tanweimingcheng;
	
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
	 * 申请原因
	 */
					
	private String shenqingyuanyin;
	
	/**
	 * 申请类型
	 */
					
	private String shenqingleixing;
	
	/**
	 * 申请时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date shenqingshijian;
	
	/**
	 * 新摊位名称
	 */
					
	private String xintanweimingcheng;
	
	/**
	 * 商家账号
	 */
					
	private String shangjiazhanghao;
	
	/**
	 * 商家名称
	 */
					
	private String shangjiamingcheng;
	
	/**
	 * 是否审核
	 */
					
	private String sfsh;
	
	/**
	 * 回复内容
	 */
					
	private String shhf;
	
	
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
	 * 设置：原摊位名称
	 */
	public void setTanweimingcheng(String tanweimingcheng) {
		this.tanweimingcheng = tanweimingcheng;
	}
	/**
	 * 获取：原摊位名称
	 */
	public String getTanweimingcheng() {
		return tanweimingcheng;
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
	 * 设置：申请原因
	 */
	public void setShenqingyuanyin(String shenqingyuanyin) {
		this.shenqingyuanyin = shenqingyuanyin;
	}
	/**
	 * 获取：申请原因
	 */
	public String getShenqingyuanyin() {
		return shenqingyuanyin;
	}
	/**
	 * 设置：申请类型
	 */
	public void setShenqingleixing(String shenqingleixing) {
		this.shenqingleixing = shenqingleixing;
	}
	/**
	 * 获取：申请类型
	 */
	public String getShenqingleixing() {
		return shenqingleixing;
	}
	/**
	 * 设置：申请时间
	 */
	public void setShenqingshijian(Date shenqingshijian) {
		this.shenqingshijian = shenqingshijian;
	}
	/**
	 * 获取：申请时间
	 */
	public Date getShenqingshijian() {
		return shenqingshijian;
	}
	/**
	 * 设置：新摊位名称
	 */
	public void setXintanweimingcheng(String xintanweimingcheng) {
		this.xintanweimingcheng = xintanweimingcheng;
	}
	/**
	 * 获取：新摊位名称
	 */
	public String getXintanweimingcheng() {
		return xintanweimingcheng;
	}
	/**
	 * 设置：商家账号
	 */
	public void setShangjiazhanghao(String shangjiazhanghao) {
		this.shangjiazhanghao = shangjiazhanghao;
	}
	/**
	 * 获取：商家账号
	 */
	public String getShangjiazhanghao() {
		return shangjiazhanghao;
	}
	/**
	 * 设置：商家名称
	 */
	public void setShangjiamingcheng(String shangjiamingcheng) {
		this.shangjiamingcheng = shangjiamingcheng;
	}
	/**
	 * 获取：商家名称
	 */
	public String getShangjiamingcheng() {
		return shangjiamingcheng;
	}
	/**
	 * 设置：是否审核
	 */
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
	/**
	 * 设置：回复内容
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：回复内容
	 */
	public String getShhf() {
		return shhf;
	}

}
