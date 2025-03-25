package com.newFile.entity;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;


/**
 * 企业信息对象 enterprises
 *
 * @author ruoyi
 * @date 2024-04-26
 */
public class Enterprises
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 企业账号 */

    private String number;

    /** 密码 */

    private String password;

    /** 企业名称 */

    private String name;

    /** 企业联系人 */

    private String contact;

    /** 企业标志 */

    private String logo;

    /** 企业简介 */

    private String introduction;

    /** 企业联系电话 */
    private String phone;

    /** 邮箱 */
    private String eMail;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setNumber(String number)
    {
        this.number = number;
    }

    public String getNumber()
    {
        return number;
    }
    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getPassword()
    {
        return password;
    }
    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
    public void setContact(String contact)
    {
        this.contact = contact;
    }

    public String getContact()
    {
        return contact;
    }
    public void setLogo(String logo)
    {
        this.logo = logo;
    }

    public String getLogo()
    {
        return logo;
    }
    public void setIntroduction(String introduction)
    {
        this.introduction = introduction;
    }

    public String getIntroduction()
    {
        return introduction;
    }
    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public String getPhone()
    {
        return phone;
    }
    public void setEmail(String email)
    {
        this.eMail = email;
    }

    public String geteMail()
    {
        return eMail;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("number", getNumber())
            .append("password", getPassword())
            .append("name", getName())
            .append("contact", getContact())
            .append("logo", getLogo())
            .append("introduction", getIntroduction())
            .append("phone", getPhone())
            .append("e-mail", geteMail())
            .toString();
    }
}
