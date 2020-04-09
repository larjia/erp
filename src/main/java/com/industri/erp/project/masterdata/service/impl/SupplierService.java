package com.industri.erp.project.masterdata.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.industri.erp.common.constant.UserConstants;
import com.industri.erp.common.utils.StringUtils;
import com.industri.erp.project.masterdata.domain.Supplier;
import com.industri.erp.project.masterdata.mapper.SupplierMapper;
import com.industri.erp.project.masterdata.service.ISupplierService;

@Service
public class SupplierService implements ISupplierService
{
	@Autowired
	private SupplierMapper supplierMapper;

	@Override
	public List<Supplier> selectSupplierList(Supplier supplier)
	{
		return supplierMapper.selectSupplierList(supplier);
	}

	@Override
	public Supplier selectSupplierById(Long id)
	{
		return supplierMapper.selectSupplierById(id);
	}

	@Override
	public String checkSupplierNumberUnique(Supplier supplier)
	{
		Long id = StringUtils.isNull(supplier.getId()) ? -1L : supplier.getId();
		Supplier info = supplierMapper.checkSupplierNumberUnique(supplier.getNumber());
		if (StringUtils.isNotNull(info) && info.getId().longValue() != id.longValue())
		{
			return UserConstants.NOT_UNIQUE;
		}
		return UserConstants.UNIQUE;
	}

	@Override
	public int insertSupplier(Supplier supplier)
	{
		return supplierMapper.insertSupplier(supplier);
	}

	@Override
	public int updateSupplier(Supplier supplier)
	{
		return supplierMapper.updateSupplier(supplier);
	}

	@Override
	public int deleteSupplierById(Long id)
	{
		return supplierMapper.deleteSupplierById(id);
	}

}
