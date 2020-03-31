package com.industri.erp.project.masterdata.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.industri.erp.common.constant.UserConstants;
import com.industri.erp.common.utils.StringUtils;
import com.industri.erp.project.masterdata.domain.PartType;
import com.industri.erp.project.masterdata.mapper.PartTypeMapper;
import com.industri.erp.project.masterdata.service.IPartTypeService;

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
	public String checkPartTypeNumberUnique(PartType partType)
	{
		Long id = StringUtils.isNull(partType.getId()) ? -1L : partType.getId();
		PartType info = partTypeMapper.checkPartTypeNumberUnique(partType.getNumber(), partType.getParentId());
		if (StringUtils.isNotNull(info) && info.getId().longValue() != id.longValue())
		{
			return UserConstants.NOT_UNIQUE;
		}
		return UserConstants.UNIQUE;
	}

	@Override
	public int insertPartType(PartType partType)
	{
		return partTypeMapper.insertPartType(partType);
	}

	@Override
	public int updatePartType(PartType partType)
	{
		return partTypeMapper.updatePartType(partType);
	}

	@Override
	public int deletePartTypeById(Long id)
	{
		return partTypeMapper.deletePartTypeById(id);
	}

}
