package com.dao;

import com.entity.QiuzhixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QiuzhixinxiVO;
import com.entity.view.QiuzhixinxiView;


/**
 * 求职信息
 * 
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
public interface QiuzhixinxiDao extends BaseMapper<QiuzhixinxiEntity> {
	
	List<QiuzhixinxiVO> selectListVO(@Param("ew") Wrapper<QiuzhixinxiEntity> wrapper);
	
	QiuzhixinxiVO selectVO(@Param("ew") Wrapper<QiuzhixinxiEntity> wrapper);
	
	List<QiuzhixinxiView> selectListView(@Param("ew") Wrapper<QiuzhixinxiEntity> wrapper);

	List<QiuzhixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<QiuzhixinxiEntity> wrapper);
	
	QiuzhixinxiView selectView(@Param("ew") Wrapper<QiuzhixinxiEntity> wrapper);
	

}
