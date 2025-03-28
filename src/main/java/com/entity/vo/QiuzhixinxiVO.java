package com.entity.vo;

import com.entity.QiuzhixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 求职信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
public class QiuzhixinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

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
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date faburiqi;
				
	
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
