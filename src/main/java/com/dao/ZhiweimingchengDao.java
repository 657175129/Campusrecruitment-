package com.dao;

import com.entity.ZhiweimingchengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhiweimingchengVO;
import com.entity.view.ZhiweimingchengView;


/**
 * 职位名称
 * 
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
public interface ZhiweimingchengDao extends BaseMapper<ZhiweimingchengEntity> {
	
	List<ZhiweimingchengVO> selectListVO(@Param("ew") Wrapper<ZhiweimingchengEntity> wrapper);
	
	ZhiweimingchengVO selectVO(@Param("ew") Wrapper<ZhiweimingchengEntity> wrapper);
	
	List<ZhiweimingchengView> selectListView(@Param("ew") Wrapper<ZhiweimingchengEntity> wrapper);

	List<ZhiweimingchengView> selectListView(Pagination page,@Param("ew") Wrapper<ZhiweimingchengEntity> wrapper);
	
	ZhiweimingchengView selectView(@Param("ew") Wrapper<ZhiweimingchengEntity> wrapper);
	

}
