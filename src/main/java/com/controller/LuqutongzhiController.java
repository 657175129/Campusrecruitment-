package com.controller;

import com.annotation.IgnoreAuth;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.dao.TongzhixinxiDao;
import com.dao.ZhaopinyiyuanDao;
import com.entity.LuqutongzhiEntity;
import com.entity.TongzhixinxiEntity;
import com.entity.ZhaopinyiyuanEntity;
import com.entity.view.LuqutongzhiView;
import com.service.LuqutongzhiService;
import com.service.ZhaopinyiyuanService;
import com.utils.MPUtil;
import com.utils.PageUtils;
import com.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

/**
 * 招聘意愿
 * 后端接口
 * @author
 * @email
 * @date 2023-04-08 13:45:44
 */
@RestController
@RequestMapping("/luqutongzhi")
public class LuqutongzhiController {
    @Autowired
    private LuqutongzhiService luqutongzhiService;





    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,LuqutongzhiEntity luqutongzhi,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date yaoqingriqistart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date yaoqingriqiend,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			luqutongzhi.setAccount((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("qiye")) {
//			luqutongzhi.setQiyezhanghao((String)request.getSession().getAttribute("username"));
            luqutongzhi.setEnterpriseAccount((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<LuqutongzhiEntity> ew = new EntityWrapper<LuqutongzhiEntity>();
                if(yaoqingriqistart!=null) ew.ge("offer_time", yaoqingriqistart);
                if(yaoqingriqiend!=null) ew.le("offer_time", yaoqingriqiend);

		PageUtils page = luqutongzhiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, luqutongzhi), params), params));

        return R.ok().put("data", page);
    }

    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,LuqutongzhiEntity luqutongzhi,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date yaoqingriqistart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date yaoqingriqiend,
		HttpServletRequest request){
        EntityWrapper<LuqutongzhiEntity> ew = new EntityWrapper<LuqutongzhiEntity>();
                if(yaoqingriqistart!=null) ew.ge("yaoqingriqi", yaoqingriqistart);
                if(yaoqingriqiend!=null) ew.le("yaoqingriqi", yaoqingriqiend);

		PageUtils page = luqutongzhiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, luqutongzhi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( LuqutongzhiEntity luqutongzhi){
       	EntityWrapper<LuqutongzhiEntity> ew = new EntityWrapper<LuqutongzhiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( luqutongzhi, "luqutongzhi"));
        return R.ok().put("data", luqutongzhiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(LuqutongzhiEntity luqutongzhi){
        EntityWrapper< LuqutongzhiEntity> ew = new EntityWrapper< LuqutongzhiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( luqutongzhi, "luqutongzhi"));
		LuqutongzhiView luqutongzhiView =  luqutongzhiService.selectView(ew);
		return R.ok("查询招聘意愿成功").put("data", luqutongzhiView);
    }

    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        LuqutongzhiEntity luqutongzhi = luqutongzhiService.selectById(id);
        return R.ok().put("data", luqutongzhi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        LuqutongzhiEntity luqutongzhi = luqutongzhiService.selectById(id);
        return R.ok().put("data", luqutongzhi);
    }




    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody LuqutongzhiEntity luqutongzhi, HttpServletRequest request){
    	luqutongzhi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(luqutongzhi);
        luqutongzhiService.insert(luqutongzhi);
        return R.ok();
    }

    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody LuqutongzhiEntity luqutongzhi, HttpServletRequest request){
    	luqutongzhi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(luqutongzhi);
        luqutongzhiService.insert(luqutongzhi);
        return R.ok();
    }

    @Autowired
    private ZhaopinyiyuanDao zhaopinyiyuanDao;

    @Autowired
    private TongzhixinxiDao tongzhixinxiDao;


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody LuqutongzhiEntity luqutongzhi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(luqutongzhi);
        luqutongzhiService.updateById(luqutongzhi);//全部更新

        //  更新inform
        if (luqutongzhi.getOfferType()==1){
            TongzhixinxiEntity tongzhixinxiEntity = new TongzhixinxiEntity();
            tongzhixinxiEntity.setId(luqutongzhi.getId());
            tongzhixinxiEntity.setStatus(luqutongzhi.getShhf());
            tongzhixinxiDao.updateById(tongzhixinxiEntity);
            return R.ok();
        }
        ZhaopinyiyuanEntity zhaopinyiyuanEntity = new ZhaopinyiyuanEntity();
        zhaopinyiyuanEntity.setId(luqutongzhi.getId());
        zhaopinyiyuanEntity.setStatus(luqutongzhi.getShhf());
        zhaopinyiyuanDao.updateById(zhaopinyiyuanEntity);
        // 更新interview


        return R.ok();
    }




    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        luqutongzhiService.deleteBatchIds(Arrays.asList(ids));
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

		Wrapper<LuqutongzhiEntity> wrapper = new EntityWrapper<LuqutongzhiEntity>();
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

		int count = luqutongzhiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}










}
