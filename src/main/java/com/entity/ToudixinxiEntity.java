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
 * 投递信息
 * 数据库通用操作实体类（普通增删改查）
 * @author
 * @email
 * @date 2023-04-08 13:45:44
 */
@TableName("deliverys")
public class ToudixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ToudixinxiEntity() {

	}

	public ToudixinxiEntity(T t) {
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
	@TableField("job_name")
	private String zhaopinmingcheng;

	/**
	 * 职位名称
	 */
	@TableField("postion_name")
	private String zhiweimingcheng;

	/**
	 * 企业账号
	 */
	@TableField("enterprise_account")
	private String qiyezhanghao;

	private String enterpriseAccount;

	public String getEnterpriseAccount() {
		return enterpriseAccount;
	}

	public void setEnterpriseAccount(String enterpriseAccount) {
		this.enterpriseAccount = enterpriseAccount;
	}

	public String getAccout() {
		return accout;
	}

	public void setAccout(String accout) {
		this.accout = accout;
	}

	/**
	 * 学生外键id
	 * */
	private String studentId;

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getEmploymentId() {
		return employmentId;
	}

	public void setEmploymentId(String employmentId) {
		this.employmentId = employmentId;
	}
	/*)
	*
	* 企业外键id
	* */

	private String employmentId;

	public String getEnterpriseId() {
		return employmentId;
	}

	public void setEnterpriseId(String employmentId) {
		this.employmentId = employmentId;
	}

	/**
	 * 企业名称
	 */
	@TableField("enterprise_name")
	private String qiyemingcheng;

	/**
	 * 联系手机
	 */
	@TableField("phone")
	private String lianxishouji;

	/**
	 * 账号
	 */
	@TableField("accout")
	private String zhanghao;

	private String accout;

	public String getAccount() {
		return accout;
	}

	public void setAccount(String account) {
		this.accout = account;
	}

	/**
	 * 姓名
	 */
	@TableField("name")
	private String xingming;

	/**
	 * 手机号码
	 */
	@TableField("deliver_phone")
	private String shoujihaoma;

	/**
	 * 简历附件
	 */
	@TableField("resume")
	private String jianlifujian;

	/**
	 * 年龄
	 */
	@TableField("age")
	private Integer nianling;

	/**
	 * 学历
	 */
	@TableField("education")
	private String xueli;

	/**
	 * 投递备注
	 */
	@TableField("remark")
	private String toudibeizhu;

	/**
	 * 投递日期
	 */
	@TableField("date")
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat
	private Date toudiriqi;

	/**
	 * 是否审核
	 */
	@TableField("state")
	private String sfsh;

	/**
	 * 审核回复
	 */
	@TableField("reply")
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
	 * 设置：投递备注
	 */
	public void setToudibeizhu(String toudibeizhu) {
		this.toudibeizhu = toudibeizhu;
	}
	/**
	 * 获取：投递备注
	 */
	public String getToudibeizhu() {
		return toudibeizhu;
	}
	/**
	 * 设置：投递日期
	 */
	public void setToudiriqi(Date toudiriqi) {
		this.toudiriqi = toudiriqi;
	}
	/**
	 * 获取：投递日期
	 */
	public Date getToudiriqi() {
		return toudiriqi;
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
	 * 设置：审核回复
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}

}
