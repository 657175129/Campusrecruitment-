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

import com.dao.XueshengDao;
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

import com.entity.ZhaopinyiyuanEntity;
import com.entity.view.ZhaopinyiyuanView;

import com.service.ZhaopinyiyuanService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 招聘意愿
 * 后端接口
 * @author
 * @email
 * @date 2023-04-08 13:45:44
 */
@RestController
@RequestMapping("/zhaopinyiyuan")
public class ZhaopinyiyuanController {
    @Autowired
    private ZhaopinyiyuanService zhaopinyiyuanService;





    @Autowired
    private XueshengDao xueshengDao;
    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ZhaopinyiyuanEntity zhaopinyiyuan,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date yaoqingriqistart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date yaoqingriqiend,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
            Map<String, String> stringStringMap = xueshengDao.selectSpecialStudet((Long) request.getSession().getAttribute("userId"));
			zhaopinyiyuan.setAccount(stringStringMap.get("number"));
		}
		if(tableName.equals("qiye")) {
//			zhaopinyiyuan.setQiyezhanghao((String)request.getSession().getAttribute("username"));
            zhaopinyiyuan.setEnterpriseAccount((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ZhaopinyiyuanEntity> ew = new EntityWrapper<ZhaopinyiyuanEntity>();
                if(yaoqingriqistart!=null) ew.ge("yaoqingriqi", yaoqingriqistart);
                if(yaoqingriqiend!=null) ew.le("yaoqingriqi", yaoqingriqiend);

		PageUtils page = zhaopinyiyuanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zhaopinyiyuan), params), params));

        return R.ok().put("data", page);
    }

    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ZhaopinyiyuanEntity zhaopinyiyuan,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date yaoqingriqistart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date yaoqingriqiend,
		HttpServletRequest request){
        EntityWrapper<ZhaopinyiyuanEntity> ew = new EntityWrapper<ZhaopinyiyuanEntity>();
                if(yaoqingriqistart!=null) ew.ge("yaoqingriqi", yaoqingriqistart);
                if(yaoqingriqiend!=null) ew.le("yaoqingriqi", yaoqingriqiend);

		PageUtils page = zhaopinyiyuanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zhaopinyiyuan), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ZhaopinyiyuanEntity zhaopinyiyuan){
       	EntityWrapper<ZhaopinyiyuanEntity> ew = new EntityWrapper<ZhaopinyiyuanEntity>();
      	ew.allEq(MPUtil.allEQMapPre( zhaopinyiyuan, "zhaopinyiyuan"));
        return R.ok().put("data", zhaopinyiyuanService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ZhaopinyiyuanEntity zhaopinyiyuan){
        EntityWrapper< ZhaopinyiyuanEntity> ew = new EntityWrapper< ZhaopinyiyuanEntity>();
 		ew.allEq(MPUtil.allEQMapPre( zhaopinyiyuan, "zhaopinyiyuan"));
		ZhaopinyiyuanView zhaopinyiyuanView =  zhaopinyiyuanService.selectView(ew);
		return R.ok("查询招聘意愿成功").put("data", zhaopinyiyuanView);
    }

    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ZhaopinyiyuanEntity zhaopinyiyuan = zhaopinyiyuanService.selectById(id);
        return R.ok().put("data", zhaopinyiyuan);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ZhaopinyiyuanEntity zhaopinyiyuan = zhaopinyiyuanService.selectById(id);
        return R.ok().put("data", zhaopinyiyuan);
    }




    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ZhaopinyiyuanEntity zhaopinyiyuan, HttpServletRequest request){
    	zhaopinyiyuan.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(zhaopinyiyuan);
        zhaopinyiyuan.setEmploymentId("2");
        zhaopinyiyuanService.insert(zhaopinyiyuan);
        return R.ok();
    }

    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ZhaopinyiyuanEntity zhaopinyiyuan, HttpServletRequest request){
    	zhaopinyiyuan.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(zhaopinyiyuan);
        zhaopinyiyuanService.insert(zhaopinyiyuan);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ZhaopinyiyuanEntity zhaopinyiyuan, HttpServletRequest request){
        //ValidatorUtils.validateEntity(zhaopinyiyuan);
        zhaopinyiyuanService.updateById(zhaopinyiyuan);//全部更新
        return R.ok();
    }




    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        zhaopinyiyuanService.deleteBatchIds(Arrays.asList(ids));
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

		Wrapper<ZhaopinyiyuanEntity> wrapper = new EntityWrapper<ZhaopinyiyuanEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			wrapper.eq("zhanghao", (String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("qiye")) {
			wrapper.eq("qiyezhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = zhaopinyiyuanService.selectCount(wrapper);
		return R.ok().put("count", count);
	}










}
