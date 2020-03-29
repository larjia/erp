package com.industri.erp.project.system.controller;

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
import com.industri.erp.project.system.domain.SysDictType;
import com.industri.erp.project.system.service.ISysDictTypeService;

/**
 * 数据字典信息
 * @author Administrator
 *
 */
@RestController
@RequestMapping("/system/dict/type")
public class SysDictTypeController extends BaseController
{
	@Autowired
	private ISysDictTypeService dictTypeService;
	
	@GetMapping("/list")
	public TableDataInfo list(SysDictType dictType)
	{
		startPage();
		List<SysDictType> list = dictTypeService.selectDictTypeList(dictType);
		return getDataTable(list);
	}
	
	/**
	 * 查询字典类型详细
	 */
	@GetMapping("/{dictId}")
	public AjaxResult getInfo(@PathVariable Long dictId)
	{
		return AjaxResult.success(dictTypeService.selectDictTypeById(dictId));
	}
	
	/**
	 * 新增字典类型
	 */
	@Log(title = "字典类型", businessType = BusinessType.INSERT)
	@PostMapping
	public AjaxResult add(@Validated @RequestBody SysDictType dict)
	{
		if (UserConstants.NOT_UNIQUE.equals(dictTypeService.checkDictTypeUnique(dict)))
		{
			return AjaxResult.error("新增字典'" + dict.getDictName() + "'失败,字典类型已存在");
		}
		dict.setCreateBy(SecurityUtils.getUserName());
		return toAjax(dictTypeService.insertDictType(dict));
	}
	
	/**
	 * 修改字典类型
	 */
	@Log(title = "字典类型", businessType = BusinessType.UPDATE)
	@PutMapping
	public AjaxResult edit(@Validated @RequestBody SysDictType dict)
	{
		if (UserConstants.NOT_UNIQUE.equals(dictTypeService.checkDictTypeUnique(dict)))
		{
			return AjaxResult.error("修改字典'" + dict.getDictName() + "'失败,字典类型已存在");
		}
		dict.setUpdateBy(SecurityUtils.getUserName());
		return toAjax(dictTypeService.updateDictType(dict));
	}
	
	/**
	 * 删除字典类型
	 */
	@Log(title = "字典类型", businessType = BusinessType.DELETE)
	@DeleteMapping("/{dictIds}")
	public AjaxResult remove(@PathVariable Long[] dictIds)
	{
		return toAjax(dictTypeService.deleteDictTypeByIds(dictIds));
	}
	
	/**
	 * 获取字典选择框列表
	 */
	@GetMapping("/optionselect")
	public AjaxResult optionselect()
	{
		List<SysDictType> dictTypes = dictTypeService.selectDictTypeAll();
		return AjaxResult.success(dictTypes);
	}
}
