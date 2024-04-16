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


import com.dao.ZhaopinyiyuanDao;
import com.entity.ZhaopinyiyuanEntity;
import com.service.ZhaopinyiyuanService;
import com.entity.vo.ZhaopinyiyuanVO;
import com.entity.view.ZhaopinyiyuanView;

@Service("zhaopinyiyuanService")
public class ZhaopinyiyuanServiceImpl extends ServiceImpl<ZhaopinyiyuanDao, ZhaopinyiyuanEntity> implements ZhaopinyiyuanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhaopinyiyuanEntity> page = this.selectPage(
                new Query<ZhaopinyiyuanEntity>(params).getPage(),
                new EntityWrapper<ZhaopinyiyuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhaopinyiyuanEntity> wrapper) {
		  Page<ZhaopinyiyuanView> page =new Query<ZhaopinyiyuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhaopinyiyuanVO> selectListVO(Wrapper<ZhaopinyiyuanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhaopinyiyuanVO selectVO(Wrapper<ZhaopinyiyuanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhaopinyiyuanView> selectListView(Wrapper<ZhaopinyiyuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhaopinyiyuanView selectView(Wrapper<ZhaopinyiyuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
