package com.industri.erp.project.masterdata.mapper;

import java.util.List;

import com.industri.erp.project.masterdata.domain.Supplier;

public interface SupplierMapper
{
	public List<Supplier> selectSupplierList(Supplier supplier);
	public Supplier selectSupplierById(Long id);
	public Supplier checkSupplierNumberUnique(String number);
	public int insertSupplier(Supplier supplier);
	public int updateSupplier(Supplier supplier);
	public int deleteSupplierById(Long id);
	public int deleteSupplierByNumber(String number);
}
