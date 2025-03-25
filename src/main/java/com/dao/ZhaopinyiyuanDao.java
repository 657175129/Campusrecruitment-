package com.dao;

import com.entity.ZhaopinyiyuanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhaopinyiyuanVO;
import com.entity.view.ZhaopinyiyuanView;


/**
 * 招聘意愿
 *
 * @author
 * @email
 * @date 2023-04-08 13:45:44
 */
public interface ZhaopinyiyuanDao extends BaseMapper<ZhaopinyiyuanEntity> {

	List<ZhaopinyiyuanVO> selectListVO(@Param("ew") Wrapper<ZhaopinyiyuanEntity> wrapper);

	ZhaopinyiyuanVO selectVO(@Param("ew") Wrapper<ZhaopinyiyuanEntity> wrapper);

	List<ZhaopinyiyuanView> selectListView(@Param("ew") Wrapper<ZhaopinyiyuanEntity> wrapper);

	List<Map<String,String>> selectListView(Pagination page,@Param("ew") Wrapper<ZhaopinyiyuanEntity> wrapper);

	ZhaopinyiyuanView selectView(@Param("ew") Wrapper<ZhaopinyiyuanEntity> wrapper);


}
