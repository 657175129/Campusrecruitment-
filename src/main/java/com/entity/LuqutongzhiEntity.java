package com.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;


/**
 * 招聘意愿
 * 数据库通用操作实体类（普通增删改查）
 * @author
 * @email
 * @date 2023-04-08 13:45:44
 */
@TableName("offers")
public class LuqutongzhiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public LuqutongzhiEntity() {

	}

	public LuqutongzhiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private Integer offerType;

	public Integer getOfferType() {
		return offerType;
	}

	public void setOfferType(Integer offerType) {
		this.offerType = offerType;
	}

	public String getEnterprsieAccount() {
		return enterprsieAccount;
	}

	public void setEnterprsieAccount(String enterprsieAccount) {
		this.enterprsieAccount = enterprsieAccount;
	}

	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 账号
	 */
	@TableField("account")
	private String zhanghao;
	private String account;

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	/**
	 * 姓名
	 */
	@TableField("name")
	private String xingming;

	/**
	 * 手机号码
	 */
	@TableField("phone")
	private String shoujihaoma;

	/**
	 * 邀请内容
	 */
	@TableField("content")
	private String yaoqingneirong;

	/**
	 * 邀请日期
	 */

	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat
	@TableField("offer_time")
	private Date yaoqingriqi;

	/**
	 * 企业账号
	 */
	@TableField("enterprsie_account")
	private String qiyezhanghao;


	private String enterprsieAccount;

	public String getEnterpriseAccount() {
		return enterprsieAccount;
	}

	public void setEnterpriseAccount(String enterpriseAccount) {
		this.enterprsieAccount = enterpriseAccount;
	}

	/**
	 * 企业名称
	 */

	@TableField("enterprise_name")
	private String qiyemingcheng;

	/**
	 * 联系手机
	 */
	@TableField("contact")
	private String lianxishouji;

	/**
	 * 回复内容
	 */
	@TableField("apply_content")
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
	 * 设置：账号
	 */
	public void setZhanghao(String zhanghao) {
		this.zhanghao = zhanghao;
	}
	/**
	 * 获取：账号
	 */
	public String getZhanghao() {
		return zhanghao;
	}
	/**
	 * 设置：姓名
	 */
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
	/**
	 * 设置：手机号码
	 */
	public void setShoujihaoma(String shoujihaoma) {
		this.shoujihaoma = shoujihaoma;
	}
	/**
	 * 获取：手机号码
	 */
	public String getShoujihaoma() {
		return shoujihaoma;
	}
	/**
	 * 设置：邀请内容
	 */
	public void setYaoqingneirong(String yaoqingneirong) {
		this.yaoqingneirong = yaoqingneirong;
	}
	/**
	 * 获取：邀请内容
	 */
	public String getYaoqingneirong() {
		return yaoqingneirong;
	}
	/**
	 * 设置：邀请日期
	 */
	public void setYaoqingriqi(Date yaoqingriqi) {
		this.yaoqingriqi = yaoqingriqi;
	}
	/**
	 * 获取：邀请日期
	 */
	public Date getYaoqingriqi() {
		return yaoqingriqi;
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
