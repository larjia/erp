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
import com.industri.erp.project.masterdata.domain.UOM;
import com.industri.erp.project.masterdata.service.IUOMService;

/**
 * 计量单位Controller
 * @author Administrator
 *
 */
@RestController
@RequestMapping("/masterdata/uom")
public class UOMController extends BaseController
{
	@Autowired
	private IUOMService uomService;
	
	@GetMapping("/list")
	public TableDataInfo list(UOM uom)
	{
		startPage();
		List<UOM> list = uomService.selectUOMList(uom);
		return getDataTable(list);
	}
	
	@GetMapping("/id/{id}")
	public AjaxResult getUOMById(@PathVariable Long id)
	{
		return AjaxResult.success(uomService.selectUOMById(id));
	}
	
	@GetMapping("/number/{number}")
	public AjaxResult getUOMByNumber(@PathVariable String number)
	{
		return AjaxResult.success(uomService.selectUOMByNumber(number));
	}
	
	@Log(title = "计量单位管理", businessType = BusinessType.INSERT)
	@PostMapping
	public AjaxResult add(@Validated @RequestBody UOM uom)
	{
		if (UserConstants.NOT_UNIQUE.equals(uomService.checkUOMNumberUnique(uom)))
		{
			return AjaxResult.error("新增计量单位'" + uom.getNumber() + "'失败,编码已存在.");
		}
		uom.setCreateBy(SecurityUtils.getUserName());
		return toAjax(uomService.insertUOM(uom));
	}
	
	@Log(title = "计量单位管理", businessType = BusinessType.UPDATE)
	@PutMapping
	public AjaxResult eidt(@Validated @RequestBody UOM uom)
	{
		if (UserConstants.NOT_UNIQUE.equals(uomService.checkUOMNumberUnique(uom)))
		{
			return AjaxResult.error("修改计量单位'" + uom.getNumber() + "'失败,编码已存在.");
		}
		uom.setUpdateBy(SecurityUtils.getUserName());
		return toAjax(uomService.updateUOM(uom));
	}
	
	@Log(title = "计量单位管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
	public AjaxResult remove(@PathVariable Long[] ids)
	{
		return toAjax(uomService.deleteUOMByIds(ids));
	}
}
