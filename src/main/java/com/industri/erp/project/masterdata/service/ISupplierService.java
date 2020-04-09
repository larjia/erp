package com.industri.erp.project.masterdata.service;

import java.util.List;

import com.industri.erp.project.masterdata.domain.Supplier;

public interface ISupplierService
{
	public List<Supplier> selectSupplierList(Supplier supplier);
	public Supplier selectSupplierById(Long id);
	public String checkSupplierNumberUnique(Supplier supplier);
	public int insertSupplier(Supplier supplier);
	public int updateSupplier(Supplier supplier);
	public int deleteSupplierById(Long id);
}
