package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ToudixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ToudixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ToudixinxiView;


/**
 * 投递信息
 *
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
public interface ToudixinxiService extends IService<ToudixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ToudixinxiVO> selectListVO(Wrapper<ToudixinxiEntity> wrapper);
   	
   	ToudixinxiVO selectVO(@Param("ew") Wrapper<ToudixinxiEntity> wrapper);
   	
   	List<ToudixinxiView> selectListView(Wrapper<ToudixinxiEntity> wrapper);
   	
   	ToudixinxiView selectView(@Param("ew") Wrapper<ToudixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ToudixinxiEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<ToudixinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<ToudixinxiEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<ToudixinxiEntity> wrapper);



}

