package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.ZhiweimingchengEntity;
import com.entity.view.ZhiweimingchengView;

import com.service.ZhiweimingchengService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 职位名称
 * 后端接口
 * @author 
 * @email 
 * @date 2023-04-08 13:45:44
 */
@RestController
@RequestMapping("/zhiweimingcheng")
public class ZhiweimingchengController {
    @Autowired
    private ZhiweimingchengService zhiweimingchengService;


    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ZhiweimingchengEntity zhiweimingcheng,
		HttpServletRequest request){
        EntityWrapper<ZhiweimingchengEntity> ew = new EntityWrapper<ZhiweimingchengEntity>();

		PageUtils page = zhiweimingchengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zhiweimingcheng), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ZhiweimingchengEntity zhiweimingcheng, 
		HttpServletRequest request){
        EntityWrapper<ZhiweimingchengEntity> ew = new EntityWrapper<ZhiweimingchengEntity>();

		PageUtils page = zhiweimingchengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zhiweimingcheng), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ZhiweimingchengEntity zhiweimingcheng){
       	EntityWrapper<ZhiweimingchengEntity> ew = new EntityWrapper<ZhiweimingchengEntity>();
      	ew.allEq(MPUtil.allEQMapPre( zhiweimingcheng, "zhiweimingcheng")); 
        return R.ok().put("data", zhiweimingchengService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ZhiweimingchengEntity zhiweimingcheng){
        EntityWrapper< ZhiweimingchengEntity> ew = new EntityWrapper< ZhiweimingchengEntity>();
 		ew.allEq(MPUtil.allEQMapPre( zhiweimingcheng, "zhiweimingcheng")); 
		ZhiweimingchengView zhiweimingchengView =  zhiweimingchengService.selectView(ew);
		return R.ok("查询职位名称成功").put("data", zhiweimingchengView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ZhiweimingchengEntity zhiweimingcheng = zhiweimingchengService.selectById(id);
        return R.ok().put("data", zhiweimingcheng);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ZhiweimingchengEntity zhiweimingcheng = zhiweimingchengService.selectById(id);
        return R.ok().put("data", zhiweimingcheng);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ZhiweimingchengEntity zhiweimingcheng, HttpServletRequest request){
    	zhiweimingcheng.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(zhiweimingcheng);
        zhiweimingchengService.insert(zhiweimingcheng);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ZhiweimingchengEntity zhiweimingcheng, HttpServletRequest request){
    	zhiweimingcheng.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(zhiweimingcheng);
        zhiweimingchengService.insert(zhiweimingcheng);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ZhiweimingchengEntity zhiweimingcheng, HttpServletRequest request){
        //ValidatorUtils.validateEntity(zhiweimingcheng);
        zhiweimingchengService.updateById(zhiweimingcheng);//全部更新
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        zhiweimingchengService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<ZhiweimingchengEntity> wrapper = new EntityWrapper<ZhiweimingchengEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = zhiweimingchengService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	









}
