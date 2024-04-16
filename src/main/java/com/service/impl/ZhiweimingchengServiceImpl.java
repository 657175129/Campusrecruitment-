package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ZhiweimingchengDao;
import com.entity.ZhiweimingchengEntity;
import com.service.ZhiweimingchengService;
import com.entity.vo.ZhiweimingchengVO;
import com.entity.view.ZhiweimingchengView;

@Service("zhiweimingchengService")
public class ZhiweimingchengServiceImpl extends ServiceImpl<ZhiweimingchengDao, ZhiweimingchengEntity> implements ZhiweimingchengService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhiweimingchengEntity> page = this.selectPage(
                new Query<ZhiweimingchengEntity>(params).getPage(),
                new EntityWrapper<ZhiweimingchengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhiweimingchengEntity> wrapper) {
		  Page<ZhiweimingchengView> page =new Query<ZhiweimingchengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhiweimingchengVO> selectListVO(Wrapper<ZhiweimingchengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhiweimingchengVO selectVO(Wrapper<ZhiweimingchengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhiweimingchengView> selectListView(Wrapper<ZhiweimingchengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhiweimingchengView selectView(Wrapper<ZhiweimingchengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
