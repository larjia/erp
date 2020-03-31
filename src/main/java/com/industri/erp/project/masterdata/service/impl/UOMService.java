package com.industri.erp.project.masterdata.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.industri.erp.common.constant.UserConstants;
import com.industri.erp.common.utils.StringUtils;
import com.industri.erp.project.masterdata.domain.UOM;
import com.industri.erp.project.masterdata.mapper.UOMMapper;
import com.industri.erp.project.masterdata.service.IUOMService;

@Service
public class UOMService implements IUOMService
{
	@Autowired
	private UOMMapper uomMapper;

	@Override
	public List<UOM> selectUOMList(UOM uom)
	{
		return uomMapper.selectUOMList(uom);
	}

	@Override
	public UOM selectUOMById(Long id)
	{
		return uomMapper.selectUOMById(id);
	}

	@Override
	public UOM selectUOMByNumber(String number)
	{
		return uomMapper.selectUOMByNumber(number);
	}

	@Override
	public String checkUOMNumberUnique(UOM uom)
	{
		Long id = StringUtils.isNull(uom.getId()) ? -1L : uom.getId();
		UOM info = uomMapper.checkUOMNumberUnique(uom.getNumber());
		if (StringUtils.isNotNull(info) && info.getId() != id.longValue())
		{
			return UserConstants.NOT_UNIQUE;
		}
		return UserConstants.UNIQUE;
	}

	@Override
	public int insertUOM(UOM uom)
	{
		return uomMapper.insertUOM(uom);
	}

	@Override
	public int updateUOM(UOM uom)
	{
		return uomMapper.updateUOM(uom);
	}

	@Override
	public int deleteUOMById(Long id)
	{
		return uomMapper.deleteUOMById(id);
	}

	@Override
	public int deleteUOMByNumber(String number)
	{
		return uomMapper.deleteUOMByNumber(number);
	}

}
