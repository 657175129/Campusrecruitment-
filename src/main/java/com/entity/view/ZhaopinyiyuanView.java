package com.entity.view;

import com.entity.ZhaopinyiyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 招聘意愿
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
@TableName("zhaopinyiyuan")
public class ZhaopinyiyuanView  extends ZhaopinyiyuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhaopinyiyuanView(){
	}
 
 	public ZhaopinyiyuanView(ZhaopinyiyuanEntity zhaopinyiyuanEntity){
 	try {
			BeanUtils.copyProperties(this, zhaopinyiyuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
