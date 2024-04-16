package com.dao;

import com.entity.ToudixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ToudixinxiVO;
import com.entity.view.ToudixinxiView;


/**
 * 投递信息
 * 
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
public interface ToudixinxiDao extends BaseMapper<ToudixinxiEntity> {
	
	List<ToudixinxiVO> selectListVO(@Param("ew") Wrapper<ToudixinxiEntity> wrapper);
	
	ToudixinxiVO selectVO(@Param("ew") Wrapper<ToudixinxiEntity> wrapper);
	
	List<ToudixinxiView> selectListView(@Param("ew") Wrapper<ToudixinxiEntity> wrapper);

	List<ToudixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ToudixinxiEntity> wrapper);
	
	ToudixinxiView selectView(@Param("ew") Wrapper<ToudixinxiEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ToudixinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ToudixinxiEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ToudixinxiEntity> wrapper);



}
