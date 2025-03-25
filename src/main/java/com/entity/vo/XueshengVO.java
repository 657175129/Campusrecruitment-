package com.entity.vo;

import com.entity.XueshengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;


/**
 * 学生
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 * @author
 * @email
 * @date 2023-04-08 13:45:44
 */
public class XueshengVO  implements Serializable {
	private static final long serialVersionUID = 1L;


	private Long id;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * 密码
	 */

	private String mima;

	/**
	 * 姓名
	 */

	private String xingming;

	/**
	 * 性别
	 */

	private String xingbie;

	/**
	 * 年龄
	 */

	private Integer nianling;

	/**
	 * 手机号码
	 */

	private String shoujihaoma;

	/**
	 * 学历
	 */

	private String xueli;

	/**
	 * 头像
	 */

	private String touxiang;
	/*
	* 账号
	* */
	private String zhanghao;

	public String getZhanghao() {
		return zhanghao;
	}

	public void setZhanghao(String zhanghao) {
		this.zhanghao = zhanghao;
	}

	/**
	 * 设置：密码
	 */

	public void setMima(String mima) {
		this.mima = mima;
	}

	/**
	 * 获取：密码
	 */
	public String getMima() {
		return mima;
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

}
