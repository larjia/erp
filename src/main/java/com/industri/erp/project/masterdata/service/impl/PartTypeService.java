package com.industri.erp.project.masterdata.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.industri.erp.common.constant.UserConstants;
import com.industri.erp.common.utils.StringUtils;
import com.industri.erp.project.masterdata.domain.PartType;
import com.industri.erp.project.masterdata.mapper.PartTypeMapper;
import com.industri.erp.project.masterdata.service.IPartTypeService;

@Service
public class PartTypeService implements IPartTypeService
{
	@Autowired
	private PartTypeMapper partTypeMapper;

	@Override
	public List<PartType> selectPartTypeList(PartType partType)
	{
		return partTypeMapper.selectPartTypeList(partType);
	}

	@Override
	public PartType selectPartTypeById(Long id)
	{
		return partTypeMapper.selectPartTypeById(id);
	}

	@Override
	public boolean hasChildrenById(Long id)
	{
		int result = partTypeMapper.hasChildrenById(id);
		return result > 0 ? true : false;
	}
	
	@Override
	public String checkPartTypeNumberUnique(PartType partType)
	{
		Long id = StringUtils.isNull(partType.getId()) ? -1L : partType.getId();
		Long parentId = (partType.getParentId() == null) ? 0L : partType.getParentId();
		PartType info = partTypeMapper.checkPartTypeNumberUnique(partType.getNumber(), parentId);
		if (StringUtils.isNotNull(info) && info.getId().longValue() != id.longValue())
		{
			return UserConstants.NOT_UNIQUE;
		}
		return UserConstants.UNIQUE;
	}

	@Override
	public int insertPartType(PartType partType)
	{
		PartType info = partTypeMapper.selectPartTypeById(partType.getParentId());
		if (info == null)
		{
			partType.setAncestors("0");
		}
		else
		{
			partType.setAncestors(info.getAncestors() + "," + partType.getParentId());
		}
		
		return partTypeMapper.insertPartType(partType);
	}

	@Override
	public int updatePartType(PartType partType)
	{
		PartType newParentType = partTypeMapper.selectPartTypeById(partType.getParentId());
		PartType oldType = partTypeMapper.selectPartTypeById(partType.getId());
		
		if (StringUtils.isNotNull(newParentType) && StringUtils.isNotNull(oldType))
		{
			String newAncestors = newParentType.getAncestors() + "," + newParentType.getId();
			String oldAncestors = oldType.getAncestors();
			partType.setAncestors(newAncestors);
			updatePartTypeChildren(partType.getId(), newAncestors, oldAncestors);
		}
		
		return partTypeMapper.updatePartType(partType);
	}

	@Override
	public int deletePartTypeById(Long id)
	{
		return partTypeMapper.deletePartTypeById(id);
	}
	
	/**
	 * 修改子元素关系
	 * 
	 * @param id 被修改的产品类别Id
	 * @param newAncestors 新的父级Id集合
	 * @param oldAncestors 旧的父级Id集合
	 */
	public void updatePartTypeChildren(Long id, String newAncestors, String oldAncestors)
	{
		// selectChildrenTypeById可以查询出所有层级的子元素,不仅仅是下一层
		// 见selectChildrenTypeById中的find_in_set函数
		List<PartType> children = partTypeMapper.selectChildrenTypeById(id);
		for (PartType child : children)
		{
			child.setAncestors(child.getAncestors().replace(oldAncestors, newAncestors));
		}
		if (children.size() > 0)
		{
			partTypeMapper.updatePartTypeChildren(children);
		}
	}

}
