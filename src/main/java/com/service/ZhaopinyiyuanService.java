package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhaopinyiyuanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhaopinyiyuanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhaopinyiyuanView;


/**
 * 招聘意愿
 *
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
public interface ZhaopinyiyuanService extends IService<ZhaopinyiyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhaopinyiyuanVO> selectListVO(Wrapper<ZhaopinyiyuanEntity> wrapper);
   	
   	ZhaopinyiyuanVO selectVO(@Param("ew") Wrapper<ZhaopinyiyuanEntity> wrapper);
   	
   	List<ZhaopinyiyuanView> selectListView(Wrapper<ZhaopinyiyuanEntity> wrapper);
   	
   	ZhaopinyiyuanView selectView(@Param("ew") Wrapper<ZhaopinyiyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhaopinyiyuanEntity> wrapper);
   	

}

