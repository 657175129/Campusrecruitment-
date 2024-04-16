package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.entity.LuqutongzhiEntity;
import com.entity.view.LuqutongzhiView;
import com.entity.vo.LuqutongzhiVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * 招聘意愿
 * 
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
public interface LuqutongzhiDao extends BaseMapper<LuqutongzhiEntity> {
	
	List<LuqutongzhiVO> selectListVO(@Param("ew") Wrapper<LuqutongzhiEntity> wrapper);
	
	LuqutongzhiVO selectVO(@Param("ew") Wrapper<LuqutongzhiEntity> wrapper);
	
	List<LuqutongzhiView> selectListView(@Param("ew") Wrapper<LuqutongzhiEntity> wrapper);

	List<LuqutongzhiView> selectListView(Pagination page,@Param("ew") Wrapper<LuqutongzhiEntity> wrapper);
	
	LuqutongzhiView selectView(@Param("ew") Wrapper<LuqutongzhiEntity> wrapper);
	

}
