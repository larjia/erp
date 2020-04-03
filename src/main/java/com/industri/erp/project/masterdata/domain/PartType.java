package com.industri.erp.project.masterdata.domain;

import java.util.ArrayList;
import java.util.List;

import com.industri.erp.framework.web.domain.BaseEntity;

/**
 * 物料类型表
 * @author Administrator
 *
 */
public class PartType extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	// Id
	private Long id;
	// 类型编码
	private String number;
	// 类型名称
	private String name;
	// 父级id
	private Long parentId;
	// 祖级列表
	private String ancestors;
	// 排序
	private String orderNum;
	// 子类别
	private List<PartType> children = new ArrayList<PartType>();
	
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
	
	public Long getParentId()
	{
		return parentId;
	}
	
	public void setParentId(Long parentId)
	{
		this.parentId = parentId;
	}
	
	public String getOrderNum()
	{
		return orderNum;
	}
	
	public void setOrderNum(String orderNum)
	{
		this.orderNum = orderNum;
	}
	
	public List<PartType> getChildren()
	{
		return children;
	}
	
	public void setChildren(List<PartType> children)
	{
		this.children = children;
	}

	public String getAncestors()
	{
		return ancestors;
	}

	public void setAncestors(String ancestors)
	{
		this.ancestors = ancestors;
	}
	
}
