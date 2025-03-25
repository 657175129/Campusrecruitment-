//package com.newFile.service.impl;
//
//import java.util.List;
//
//import com.newFile.entity.Enterprises;
//import com.newFile.mapper.EnterprisesMapper;
//import com.newFile.service.IEnterprisesService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//
///**
// * 企业信息Service业务层处理
// *
// * @author ruoyi
// * @date 2024-04-26
// */
//@Service
//public class EnterprisesServiceImpl implements IEnterprisesService
//{
//    @Autowired
//    private EnterprisesMapper enterprisesMapper;
//
//    /**
//     * 查询企业信息
//     *
//     * @param id 企业信息主键
//     * @return 企业信息
//     */
//    @Override
//    public Enterprises selectEnterprisesById(Long id)
//    {
//        return enterprisesMapper.selectEnterprisesById(id);
//    }
//
//    /**
//     * 查询企业信息列表
//     *
//     * @param enterprises 企业信息
//     * @return 企业信息
//     */
//    @Override
//    public List<Enterprises> selectEnterprisesList(Enterprises enterprises)
//    {
//        return enterprisesMapper.selectEnterprisesList(enterprises);
//    }
//
//    /**
//     * 新增企业信息
//     *
//     * @param enterprises 企业信息
//     * @return 结果
//     */
//    @Override
//    public int insertEnterprises(Enterprises enterprises)
//    {
//        return enterprisesMapper.insertEnterprises(enterprises);
//    }
//
//    /**
//     * 修改企业信息
//     *
//     * @param enterprises 企业信息
//     * @return 结果
//     */
//    @Override
//    public int updateEnterprises(Enterprises enterprises)
//    {
//        return enterprisesMapper.updateEnterprises(enterprises);
//    }
//
//    /**
//     * 批量删除企业信息
//     *
//     * @param ids 需要删除的企业信息主键
//     * @return 结果
//     */
//    @Override
//    public int deleteEnterprisesByIds(Long[] ids)
//    {
//        return enterprisesMapper.deleteEnterprisesByIds(ids);
//    }
//
//    /**
//     * 删除企业信息信息
//     *
//     * @param id 企业信息主键
//     * @return 结果
//     */
//    @Override
//    public int deleteEnterprisesById(Long id)
//    {
//        return enterprisesMapper.deleteEnterprisesById(id);
//    }
//}
