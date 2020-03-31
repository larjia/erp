package com.industri.erp.project.masterdata.domain;

import com.industri.erp.framework.web.domain.BaseEntity;

/**
 * 计量单位
 * @author Administrator
 *
 */
public class UOM extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	// Id
	private Long id;
	// 编码
	private String number;
	// 名称
	private String name;
	
	public Long getId()
	{
		return id;
	}
	
	public void setId(Long id)
	{
		this.id = id;
	}
	
	public String getNumber()
	{
		return number;
	}
	
	public void setNumber(String number)
	{
		this.number = number;
	}
	
	public String getName()
	{
		return name;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	
}
