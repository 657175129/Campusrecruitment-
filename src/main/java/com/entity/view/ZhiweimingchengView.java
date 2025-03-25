package com.entity.view;

import com.entity.ZhiweimingchengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;


/**
 * 岗位分类
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author
 * @email
 * @date 2023-04-08 13:45:44
 */
@TableName("position")
public class ZhiweimingchengView  extends ZhiweimingchengEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhiweimingchengView(){
	}

 	public ZhiweimingchengView(ZhiweimingchengEntity zhiweimingchengEntity){
 	try {
			BeanUtils.copyProperties(this, zhiweimingchengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
