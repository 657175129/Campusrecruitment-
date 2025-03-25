package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhiweimingchengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhiweimingchengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhiweimingchengView;


/**
 * 岗位分类
 *
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
public interface ZhiweimingchengService extends IService<ZhiweimingchengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhiweimingchengVO> selectListVO(Wrapper<ZhiweimingchengEntity> wrapper);
   	
   	ZhiweimingchengVO selectVO(@Param("ew") Wrapper<ZhiweimingchengEntity> wrapper);
   	
   	List<ZhiweimingchengView> selectListView(Wrapper<ZhiweimingchengEntity> wrapper);
   	
   	ZhiweimingchengView selectView(@Param("ew") Wrapper<ZhiweimingchengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhiweimingchengEntity> wrapper);
   	

}

