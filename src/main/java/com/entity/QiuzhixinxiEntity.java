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
 * 求职信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
@TableName("qiuzhixinxi")
public class QiuzhixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public QiuzhixinxiEntity() {
		
	}
	
	public QiuzhixinxiEntity(T t) {
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
	 * 账号
	 */
					
	private String zhanghao;
	
	/**
	 * 姓名
	 */
					
	private String xingming;
	
	/**
	 * 性别
	 */
					
	private String xingbie;
	
	/**
	 * 手机号码
	 */
					
	private String shoujihaoma;
	
	/**
	 * 头像
	 */
					
	private String touxiang;
	
	/**
	 * 年龄
	 */
					
	private Integer nianling;
	
	/**
	 * 学历
	 */
					
	private String xueli;
	
	/**
	 * 毕业学校
	 */
					
	private String biyexuexiao;
	
	/**
	 * 工作经历
	 */
					
	private String gongzuojingli;
	
	/**
	 * 擅长
	 */
					
	private String shanzhang;
	private String qzzt;
	private String gzdd;

	public String getQzzt() {
		return qzzt;
	}

	public void setQzzt(String qzzt) {
		this.qzzt = qzzt;
	}

	public String getGzdd() {
		return gzdd;
	}

	public void setGzdd(String gzdd) {
		this.gzdd = gzdd;
	}

	/**
	 * 简历附件
	 */
					
	private String jianlifujian;
	
	/**
	 * 寻找职位
	 */
					
	private String xunzhaozhiwei;
	
	/**
	 * 待遇薪酬
	 */
					
	private String daiyuxinchou;
	
	/**
	 * 发布日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date faburiqi;
	
	
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
	 * 设置：性别
	 */
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
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
	 * 设置：头像
	 */
	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}
	/**
	 * 获取：头像
	 */
	public String getTouxiang() {
		return touxiang;
	}
	/**
	 * 设置：年龄
	 */
	public void setNianling(Integer nianling) {
		this.nianling = nianling;
	}
	/**
	 * 获取：年龄
	 */
	public Integer getNianling() {
		return nianling;
	}
	/**
	 * 设置：学历
	 */
	public void setXueli(String xueli) {
		this.xueli = xueli;
	}
	/**
	 * 获取：学历
	 */
	public String getXueli() {
		return xueli;
	}
	/**
	 * 设置：毕业学校
	 */
	public void setBiyexuexiao(String biyexuexiao) {
		this.biyexuexiao = biyexuexiao;
	}
	/**
	 * 获取：毕业学校
	 */
	public String getBiyexuexiao() {
		return biyexuexiao;
	}
	/**
	 * 设置：工作经历
	 */
	public void setGongzuojingli(String gongzuojingli) {
		this.gongzuojingli = gongzuojingli;
	}
	/**
	 * 获取：工作经历
	 */
	public String getGongzuojingli() {
		return gongzuojingli;
	}
	/**
	 * 设置：擅长
	 */
	public void setShanzhang(String shanzhang) {
		this.shanzhang = shanzhang;
	}
	/**
	 * 获取：擅长
	 */
	public String getShanzhang() {
		return shanzhang;
	}
	/**
	 * 设置：简历附件
	 */
	public void setJianlifujian(String jianlifujian) {
		this.jianlifujian = jianlifujian;
	}
	/**
	 * 获取：简历附件
	 */
	public String getJianlifujian() {
		return jianlifujian;
	}
	/**
	 * 设置：寻找职位
	 */
	public void setXunzhaozhiwei(String xunzhaozhiwei) {
		this.xunzhaozhiwei = xunzhaozhiwei;
	}
	/**
	 * 获取：寻找职位
	 */
	public String getXunzhaozhiwei() {
		return xunzhaozhiwei;
	}
	/**
	 * 设置：待遇薪酬
	 */
	public void setDaiyuxinchou(String daiyuxinchou) {
		this.daiyuxinchou = daiyuxinchou;
	}
	/**
	 * 获取：待遇薪酬
	 */
	public String getDaiyuxinchou() {
		return daiyuxinchou;
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

}
