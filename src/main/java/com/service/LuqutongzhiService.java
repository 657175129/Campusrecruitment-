package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.entity.LuqutongzhiEntity;
import com.entity.view.LuqutongzhiView;
import com.entity.vo.LuqutongzhiVO;
import com.utils.PageUtils;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


/**
 * 招聘意愿
 *
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
public interface LuqutongzhiService extends IService<LuqutongzhiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<LuqutongzhiVO> selectListVO(Wrapper<LuqutongzhiEntity> wrapper);
   	
   	LuqutongzhiVO selectVO(@Param("ew") Wrapper<LuqutongzhiEntity> wrapper);
   	
   	List<LuqutongzhiView> selectListView(Wrapper<LuqutongzhiEntity> wrapper);
   	
   	LuqutongzhiView selectView(@Param("ew") Wrapper<LuqutongzhiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<LuqutongzhiEntity> wrapper);
   	

}

