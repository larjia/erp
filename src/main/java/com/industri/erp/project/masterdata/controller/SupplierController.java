package com.industri.erp.project.masterdata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.industri.erp.common.constant.UserConstants;
import com.industri.erp.common.utils.SecurityUtils;
import com.industri.erp.framework.aspectj.lang.annotation.Log;
import com.industri.erp.framework.aspectj.lang.enums.BusinessType;
import com.industri.erp.framework.web.controller.BaseController;
import com.industri.erp.framework.web.domain.AjaxResult;
import com.industri.erp.framework.web.page.TableDataInfo;
import com.industri.erp.project.masterdata.domain.Supplier;
import com.industri.erp.project.masterdata.service.ISupplierService;

@RestController
@RequestMapping("/masterdata/supplier")
public class SupplierController extends BaseController
{
	@Autowired
	private ISupplierService supplierService;
	
	@GetMapping("/list")
	public TableDataInfo list(Supplier supplier)
	{
		startPage();
		List<Supplier> list = supplierService.selectSupplierList(supplier);
//		return AjaxResult.success(suppliers);
		return getDataTable(list);
	}
	
	@GetMapping("/{id}")
	public AjaxResult getSupplierById(@PathVariable Long id)
	{
		return AjaxResult.success(supplierService.selectSupplierById(id));
	}
	
	@Log(title = "供应商管理", businessType = BusinessType.INSERT)
	@PostMapping
	public AjaxResult add(@Validated @RequestBody Supplier supplier)
	{
		if (UserConstants.NOT_UNIQUE.equals(supplierService.checkSupplierNumberUnique(supplier)))
		{
			return AjaxResult.error("新增供应商'" + supplier.getNumber() + "'失败,编码已存在.");
		}
		
		supplier.setCreateBy(SecurityUtils.getUserName());
		return toAjax(supplierService.insertSupplier(supplier));
	}
	
	@Log(title = "供应商管理", businessType = BusinessType.UPDATE)
	@PutMapping
	public AjaxResult edit(@Validated @RequestBody Supplier supplier)
	{
		if (UserConstants.NOT_UNIQUE.equals(supplierService.checkSupplierNumberUnique(supplier)))
		{
			return AjaxResult.error("修改供应商'" + supplier.getName() + "'失败,编码已存在.");
		}
		
		supplier.setUpdateBy(SecurityUtils.getUserName());
		return toAjax(supplierService.updateSupplier(supplier));
	}
	
	@Log(title = "供应商管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{id}")
	public AjaxResult remove(@PathVariable Long id)
	{
		return toAjax(supplierService.deleteSupplierById(id));
	}
}
