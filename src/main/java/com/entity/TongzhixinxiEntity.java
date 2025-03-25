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
 * 通知信息
 * 数据库通用操作实体类（普通增删改查）
 * @author
 * @email
 * @date 2023-04-08 13:45:44
 */
@TableName("informs")
public class TongzhixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public TongzhixinxiEntity() {

	}

	public TongzhixinxiEntity(T t) {
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
	 * 通知名称
	 */
	@TableField("title")
	private String tongzhimingcheng;

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
	 * 通知内容
	 */
	@TableField("content")
	private String tongzhineirong;

	/**
	 * 企业账号
	 */
	@TableField("enterprse_account")
	private String qiyezhanghao;

	private String enterprseAccount;

	public String getEnterprseAccount() {
		return enterprseAccount;
	}

	public void setEnterprseAccount(String enterprseAccount) {
		this.enterprseAccount = enterprseAccount;
	}

	/**
	 * 企业名称
	 */
	@TableField("enterprise_name")
	private String qiyemingcheng;

	/**
	 * 通知日期
	 */

	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat
	@TableField("data")
	private Date tongzhiriqi;

	/**
	 * 回复内容
	 */
	@TableField("details")
	private String shhf;
//
//	//回复时间
//	private String replaytime;
	//面试时间
	private  String interviewtime;
	//面试结果
	private String result;

	// 状态
	private String status;
	// 薪资待遇
	private String salary;
	// 工作地点
	private String place;

//	public String getReplaytime() {
//		return replaytime;
//	}
//
//	public void setReplaytime(String replaytime) {
//		this.replaytime = replaytime;
//	}

	public String getInterviewtime() {
		return interviewtime;
	}

	public void setInterviewtime(String interviewtime) {
		this.interviewtime = interviewtime;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

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
	 * 设置：通知名称
	 */
	public void setTongzhimingcheng(String tongzhimingcheng) {
		this.tongzhimingcheng = tongzhimingcheng;
	}
	/**
	 * 获取：通知名称
	 */
	public String getTongzhimingcheng() {
		return tongzhimingcheng;
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
	 * 设置：通知内容
	 */
	public void setTongzhineirong(String tongzhineirong) {
		this.tongzhineirong = tongzhineirong;
	}
	/**
	 * 获取：通知内容
	 */
	public String getTongzhineirong() {
		return tongzhineirong;
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
	 * 设置：通知日期
	 */
	public void setTongzhiriqi(Date tongzhiriqi) {
		this.tongzhiriqi = tongzhiriqi;
	}
	/**
	 * 获取：通知日期
	 */
	public Date getTongzhiriqi() {
		return tongzhiriqi;
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
