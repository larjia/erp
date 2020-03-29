package com.industri.erp.project.production.domain;

import com.industri.erp.framework.web.domain.BaseEntity;

/**
 * 生产车间工序(按班组分,比如焊接班组下有点胶、上料工序)
 * @author Administrator
 *
 */
public class ProdSFOperation extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	// 工序Id
	private Long id;
	// 工序名称
	private String name;
	// 不良是否需要原因0不需要1需要
	private String needReason;
	// 班组Id
	private Long groupId;
	// 班组对象
	private ProdSFGroup group;
	
	public ProdSFOperation()
	{
	}

	public Long getId()
	{
		return id;
	}

	public void setId(Long id)
	{
		this.id = id;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public Long getGroupId()
	{
		return groupId;
	}

	public void setGroupId(Long groupId)
	{
		this.groupId = groupId;
	}

	public ProdSFGroup getGroup()
	{
		return group;
	}

	public void setGroup(ProdSFGroup group)
	{
		this.group = group;
	}

	public String getNeedReason()
	{
		return needReason;
	}

	public void setNeedReason(String needReason)
	{
		this.needReason = needReason;
	}
}
