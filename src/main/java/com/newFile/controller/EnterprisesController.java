//package com.newFile.controller;
//
//import java.util.List;
//import javax.servlet.http.HttpServletResponse;
//
//import com.newFile.entity.Enterprises;
//import com.newFile.service.IEnterprisesService;
//import org.springframework.security.access.prepost.PreAuthorize;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PutMapping;
//import org.springframework.web.bind.annotation.DeleteMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//
///**
// * 企业信息Controller
// *
// * @author ruoyi
// * @date 2024-04-26
// */
//@RestController
//@RequestMapping("/system/enterprises")
//public class EnterprisesController
//{
//    @Autowired
//    private IEnterprisesService enterprisesService;
//
//    /**
//     * 查询企业信息列表
//     */
//
//    @GetMapping("/list")
//    public TableDataInfo list(Enterprises enterprises)
//    {
//        startPage();
//        List<Enterprises> list = enterprisesService.selectEnterprisesList(enterprises);
//        return getDataTable(list);
//    }
//
//
//    /**
//     * 获取企业信息详细信息
//     */
//
//    @GetMapping(value = "/{id}")
//    public AjaxResult getInfo(@PathVariable("id") Long id)
//    {
//        return success(enterprisesService.selectEnterprisesById(id));
//    }
//
//    /**
//     * 新增企业信息
//     */
//
//
//    @PostMapping
//    public AjaxResult add(@RequestBody Enterprises enterprises)
//    {
//        return toAjax(enterprisesService.insertEnterprises(enterprises));
//    }
//
//    /**
//     * 修改企业信息
//     */
//
//
//    @PutMapping
//    public AjaxResult edit(@RequestBody Enterprises enterprises)
//    {
//        return toAjax(enterprisesService.updateEnterprises(enterprises));
//    }
//
//    /**
//     * 删除企业信息
//     */
//
//
//	@DeleteMapping("/{ids}")
//    public AjaxResult remove(@PathVariable Long[] ids)
//    {
//        return toAjax(enterprisesService.deleteEnterprisesByIds(ids));
//    }
//}
