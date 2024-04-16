package com.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.LuqutongzhiDao;
import com.entity.LuqutongzhiEntity;
import com.entity.view.LuqutongzhiView;
import com.entity.vo.LuqutongzhiVO;
import com.service.LuqutongzhiService;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("luqutongzhiService")
public class LuqutongzhiServiceImpl extends ServiceImpl<LuqutongzhiDao, LuqutongzhiEntity> implements LuqutongzhiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LuqutongzhiEntity> page = this.selectPage(
                new Query<LuqutongzhiEntity>(params).getPage(),
                new EntityWrapper<LuqutongzhiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<LuqutongzhiEntity> wrapper) {
		  Page<LuqutongzhiView> page =new Query<LuqutongzhiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<LuqutongzhiVO> selectListVO(Wrapper<LuqutongzhiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public LuqutongzhiVO selectVO(Wrapper<LuqutongzhiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<LuqutongzhiView> selectListView(Wrapper<LuqutongzhiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public LuqutongzhiView selectView(Wrapper<LuqutongzhiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
