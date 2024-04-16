package com.entity;

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
 * 招聘信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
@TableName("zhaopinxinxi")
public class ZhaopinxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ZhaopinxinxiEntity() {
		
	}
	
	public ZhaopinxinxiEntity(T t) {
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
	 * 招聘名称
	 */
					
	private String zhaopinmingcheng;
	
	/**
	 * 招聘图片
	 */
					
	private String zhaopintupian;
	
	/**
	 * 职位名称
	 */
					
	private String zhiweimingcheng;
	
	/**
	 * 薪酬待遇
	 */
					
	private String xinchoudaiyu;
	
	/**
	 * 招聘简介
	 */
					
	private String zhaopinjianjie;
	
	/**
	 * 招聘内容
	 */
					
	private String zhaopinneirong;
	
	/**
	 * 招聘要求
	 */
					
	private String zhaopinyaoqiu;
	
	/**
	 * 企业账号
	 */
					
	private String qiyezhanghao;
	
	/**
	 * 企业名称
	 */
					
	private String qiyemingcheng;
	
	/**
	 * 联系手机
	 */
					
	private String lianxishouji;
	
	/**
	 * 发布日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date faburiqi;
	
	/**
	 * 最近点击时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date clicktime;
	
	
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
	 * 设置：招聘名称
	 */
	public void setZhaopinmingcheng(String zhaopinmingcheng) {
		this.zhaopinmingcheng = zhaopinmingcheng;
	}
	/**
	 * 获取：招聘名称
	 */
	public String getZhaopinmingcheng() {
		return zhaopinmingcheng;
	}
	/**
	 * 设置：招聘图片
	 */
	public void setZhaopintupian(String zhaopintupian) {
		this.zhaopintupian = zhaopintupian;
	}
	/**
	 * 获取：招聘图片
	 */
	public String getZhaopintupian() {
		return zhaopintupian;
	}
	/**
	 * 设置：职位名称
	 */
	public void setZhiweimingcheng(String zhiweimingcheng) {
		this.zhiweimingcheng = zhiweimingcheng;
	}
	/**
	 * 获取：职位名称
	 */
	public String getZhiweimingcheng() {
		return zhiweimingcheng;
	}
	/**
	 * 设置：薪酬待遇
	 */
	public void setXinchoudaiyu(String xinchoudaiyu) {
		this.xinchoudaiyu = xinchoudaiyu;
	}
	/**
	 * 获取：薪酬待遇
	 */
	public String getXinchoudaiyu() {
		return xinchoudaiyu;
	}
	/**
	 * 设置：招聘简介
	 */
	public void setZhaopinjianjie(String zhaopinjianjie) {
		this.zhaopinjianjie = zhaopinjianjie;
	}
	/**
	 * 获取：招聘简介
	 */
	public String getZhaopinjianjie() {
		return zhaopinjianjie;
	}
	/**
	 * 设置：招聘内容
	 */
	public void setZhaopinneirong(String zhaopinneirong) {
		this.zhaopinneirong = zhaopinneirong;
	}
	/**
	 * 获取：招聘内容
	 */
	public String getZhaopinneirong() {
		return zhaopinneirong;
	}
	/**
	 * 设置：招聘要求
	 */
	public void setZhaopinyaoqiu(String zhaopinyaoqiu) {
		this.zhaopinyaoqiu = zhaopinyaoqiu;
	}
	/**
	 * 获取：招聘要求
	 */
	public String getZhaopinyaoqiu() {
		return zhaopinyaoqiu;
	}
	/**
	 * 设置：企业账号
	 */
	public void setQiyezhanghao(String qiyezhanghao) {
		this.qiyezhanghao = qiyezhanghao;
	}
	/**
	 * 获取：企业账号
	 */
	public String getQiyezhanghao() {
		return qiyezhanghao;
	}
	/**
	 * 设置：企业名称
	 */
	public void setQiyemingcheng(String qiyemingcheng) {
		this.qiyemingcheng = qiyemingcheng;
	}
	/**
	 * 获取：企业名称
	 */
	public String getQiyemingcheng() {
		return qiyemingcheng;
	}
	/**
	 * 设置：联系手机
	 */
	public void setLianxishouji(String lianxishouji) {
		this.lianxishouji = lianxishouji;
	}
	/**
	 * 获取：联系手机
	 */
	public String getLianxishouji() {
		return lianxishouji;
	}
	/**
	 * 设置：发布日期
	 */
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	/**
	 * 获取：发布日期
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
	/**
	 * 设置：最近点击时间
	 */
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}

}
