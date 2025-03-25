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

import com.entity.ToudixinxiEntity;
import com.entity.view.ToudixinxiView;

import com.service.ToudixinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 投递信息
 * 后端接口
 * @author
 * @email
 * @date 2023-04-08 13:45:44
 */
@RestController
@RequestMapping("/toudixinxi")
public class ToudixinxiController {
    @Autowired
    private ToudixinxiService toudixinxiService;



    @Autowired
    private XueshengDao xueshengDao;

    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ToudixinxiEntity toudixinxi,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date toudiriqistart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date toudiriqiend,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("qiye")) {

//			toudixinxi.setQiyezhanghao((String)request.getSession().getAttribute("username"));
            toudixinxi.setEnterpriseAccount((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("xuesheng")) {
            Map<String, String> stringStringMap = xueshengDao.selectSpecialStudet((Long) request.getSession().getAttribute("userId"));




			toudixinxi.setAccount(stringStringMap.get("number"));

		}
        EntityWrapper<ToudixinxiEntity> ew = new EntityWrapper<ToudixinxiEntity>();
                if(toudiriqistart!=null) ew.ge("toudiriqi", toudiriqistart);
                if(toudiriqiend!=null) ew.le("toudiriqi", toudiriqiend);

		PageUtils page = toudixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, toudixinxi), params), params));

        return R.ok().put("data", page);
    }

    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ToudixinxiEntity toudixinxi,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date toudiriqistart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date toudiriqiend,
		HttpServletRequest request){
        EntityWrapper<ToudixinxiEntity> ew = new EntityWrapper<ToudixinxiEntity>();
                if(toudiriqistart!=null) ew.ge("toudiriqi", toudiriqistart);
                if(toudiriqiend!=null) ew.le("toudiriqi", toudiriqiend);

		PageUtils page = toudixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, toudixinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ToudixinxiEntity toudixinxi){
       	EntityWrapper<ToudixinxiEntity> ew = new EntityWrapper<ToudixinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( toudixinxi, "toudixinxi"));
        return R.ok().put("data", toudixinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ToudixinxiEntity toudixinxi){
        EntityWrapper< ToudixinxiEntity> ew = new EntityWrapper< ToudixinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( toudixinxi, "toudixinxi"));
		ToudixinxiView toudixinxiView =  toudixinxiService.selectView(ew);
		return R.ok("查询投递信息成功").put("data", toudixinxiView);
    }

    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ToudixinxiEntity toudixinxi = toudixinxiService.selectById(id);
        return R.ok().put("data", toudixinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ToudixinxiEntity toudixinxi = toudixinxiService.selectById(id);
        return R.ok().put("data", toudixinxi);
    }




    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ToudixinxiEntity toudixinxi, HttpServletRequest request){
    	toudixinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(toudixinxi);
        toudixinxiService.insert(toudixinxi);
        return R.ok();
    }

    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ToudixinxiEntity toudixinxi, HttpServletRequest request){
    	toudixinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(toudixinxi);

        toudixinxi.setEnterpriseId("1");
        toudixinxi.setStudentId("11");
        toudixinxiService.insert(toudixinxi);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ToudixinxiEntity toudixinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(toudixinxi);
        toudixinxiService.updateById(toudixinxi);//全部更新
        return R.ok();
    }




    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        toudixinxiService.deleteBatchIds(Arrays.asList(ids));
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

		Wrapper<ToudixinxiEntity> wrapper = new EntityWrapper<ToudixinxiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("qiye")) {
			wrapper.eq("qiyezhanghao", (String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("xuesheng")) {
			wrapper.eq("zhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = toudixinxiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}







    /**
     * （按值统计）
     */
    @RequestMapping("/value/{xColumnName}/{yColumnName}")
    public R value(@PathVariable("yColumnName") String yColumnName, @PathVariable("xColumnName") String xColumnName,HttpServletRequest request) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xColumn", xColumnName);
        params.put("yColumn", yColumnName);
        EntityWrapper<ToudixinxiEntity> ew = new EntityWrapper<ToudixinxiEntity>();
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("qiye")) {
            ew.eq("qiyezhanghao", (String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("xuesheng")) {
            ew.eq("zhanghao", (String)request.getSession().getAttribute("username"));
		}
        List<Map<String, Object>> result = toudixinxiService.selectValue(params, ew);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for(Map<String, Object> m : result) {
            for(String k : m.keySet()) {
                if(m.get(k) instanceof Date) {
                    m.put(k, sdf.format((Date)m.get(k)));
                }
            }
        }
        return R.ok().put("data", result);
    }

    /**
     * （按值统计）时间统计类型
     */
    @RequestMapping("/value/{xColumnName}/{yColumnName}/{timeStatType}")
    public R valueDay(@PathVariable("yColumnName") String yColumnName, @PathVariable("xColumnName") String xColumnName, @PathVariable("timeStatType") String timeStatType,HttpServletRequest request) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xColumn", xColumnName);
        params.put("yColumn", yColumnName);
        params.put("timeStatType", timeStatType);
        EntityWrapper<ToudixinxiEntity> ew = new EntityWrapper<ToudixinxiEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("qiye")) {
            ew.eq("qiyezhanghao", (String)request.getSession().getAttribute("username"));
        }
        if(tableName.equals("xuesheng")) {
            ew.eq("zhanghao", (String)request.getSession().getAttribute("username"));
        }
        List<Map<String, Object>> result = toudixinxiService.selectTimeStatValue(params, ew);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for(Map<String, Object> m : result) {
            for(String k : m.keySet()) {
                if(m.get(k) instanceof Date) {
                    m.put(k, sdf.format((Date)m.get(k)));
                }
            }
        }
        return R.ok().put("data", result);
    }

    /**
     * 分组统计投递人数
     */
    @RequestMapping("/group/{columnName}")
    public R group(@PathVariable("columnName") String columnName,HttpServletRequest request) {
        Map<String, Object> params = new HashMap<String, Object>();

        params.put("column", columnName);
        if (StringUtils.equals(columnName,"toudiriqi")){
            params.put("column","date");
        }
        EntityWrapper<ToudixinxiEntity> ew = new EntityWrapper<ToudixinxiEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("qiye")) {
            ew.eq("qiyezhanghao", (String)request.getSession().getAttribute("username"));
        }
        if(tableName.equals("xuesheng")) {
            ew.eq("zhanghao", (String)request.getSession().getAttribute("username"));
        }
        List<Map<String, Object>> result = toudixinxiService.selectGroup(params, ew);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for(Map<String, Object> m : result) {
            for(String k : m.keySet()) {
                if(m.get(k) instanceof Date) {
                    m.put(k, sdf.format((Date)m.get(k)));
                }
            }
        }
        return R.ok().put("data", result);
    }




    /**
     * 总数量
     */
    @RequestMapping("/count")
    public R count(@RequestParam Map<String, Object> params,ToudixinxiEntity toudixinxi, HttpServletRequest request){
        String tableName = request.getSession().getAttribute("tableName").toString();
        if(tableName.equals("qiye")) {
            toudixinxi.setQiyezhanghao((String)request.getSession().getAttribute("username"));
        }
        if(tableName.equals("xuesheng")) {
            toudixinxi.setZhanghao((String)request.getSession().getAttribute("username"));
        }
        EntityWrapper<ToudixinxiEntity> ew = new EntityWrapper<ToudixinxiEntity>();
        int count = toudixinxiService.selectCount(MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, toudixinxi), params), params));
        return R.ok().put("data", count);
    }


}
