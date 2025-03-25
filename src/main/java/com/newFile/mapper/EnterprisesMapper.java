package com.newFile.mapper;

import com.newFile.entity.Enterprises;

import java.util.List;


/**
 * 企业信息Mapper接口
 *
 * @author ruoyi
 * @date 2024-04-26
 */
public interface EnterprisesMapper
{
    /**
     * 查询企业信息
     *
     * @param id 企业信息主键
     * @return 企业信息
     */
    public Enterprises selectEnterprisesById(Long id);

    /**
     * 查询企业信息列表
     *
     * @param enterprises 企业信息
     * @return 企业信息集合
     */
    public List<Enterprises> selectEnterprisesList(Enterprises enterprises);

    /**
     * 新增企业信息
     *
     * @param enterprises 企业信息
     * @return 结果
     */
    public int insertEnterprises(Enterprises enterprises);

    /**
     * 修改企业信息
     *
     * @param enterprises 企业信息
     * @return 结果
     */
    public int updateEnterprises(Enterprises enterprises);

    /**
     * 删除企业信息
     *
     * @param id 企业信息主键
     * @return 结果
     */
    public int deleteEnterprisesById(Long id);

    /**
     * 批量删除企业信息
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteEnterprisesByIds(Long[] ids);
}
