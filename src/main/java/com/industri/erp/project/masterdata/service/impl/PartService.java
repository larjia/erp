package com.industri.erp.project.masterdata.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.industri.erp.common.constant.UserConstants;
import com.industri.erp.common.utils.StringUtils;
import com.industri.erp.project.masterdata.domain.Part;
import com.industri.erp.project.masterdata.mapper.PartMapper;
import com.industri.erp.project.masterdata.service.IPartService;

@Service
public class PartService implements IPartService
{
	@Autowired
	private PartMapper partMapper;

	@Override
	public List<Part> selectPartList(Part part)
	{
		return partMapper.selectPartList(part);
	}

	@Override
	public Part selectPartById(Long id)
	{
		return partMapper.selectPartById(id);
	}

	@Override
	public Part selectPartByNumber(String number)
	{
		return partMapper.selectPartListByNumber(number);
	}

	@Override
	public String checkPartNumberUnique(Part part)
	{
		Long id = StringUtils.isNull(part.getId()) ? -1L : part.getId();
		Part info =  partMapper.checkPartNumberUnique(part.getNumber());
		if (StringUtils.isNotNull(info) && info.getId() != id.longValue())
		{
			return UserConstants.NOT_UNIQUE;
		}
		return UserConstants.UNIQUE;
	}

	@Override
	public int insertPart(Part part)
	{
		return partMapper.insertPart(part);
	}

	@Override
	public int updatePart(Part part)
	{
		return partMapper.updatePart(part);
	}

	@Override
	public int deletePartById(Long id)
	{
		return partMapper.deletePartById(id);
	}

	@Override
	public int deletePartByNumber(String number)
	{
		return partMapper.deletePartByNumber(number);
	}

}
