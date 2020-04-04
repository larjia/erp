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
import com.industri.erp.project.masterdata.domain.PartType;
import com.industri.erp.project.masterdata.service.IPartTypeService;

/**
 * 产品类别
 * @author Administrator
 */
@RestController
@RequestMapping("/masterdata/parttype")
public class PartTypeController extends BaseController
{
	@Autowired
	private IPartTypeService partTypeService;
	
	@GetMapping("/list")
	public AjaxResult list(PartType partType)
	{
		List<PartType> types = partTypeService.selectPartTypeList(partType);
		return AjaxResult.success(types);
	}
	
	@GetMapping("/{id}")
	public AjaxResult getPartTypeById(@PathVariable Long id)
	{
		return AjaxResult.success(partTypeService.selectPartTypeById(id));
	}
	
	@Log(title = "产品分类管理", businessType = BusinessType.INSERT)
	@PostMapping
	public AjaxResult add(@Validated @RequestBody PartType partType)
	{
		if (UserConstants.NOT_UNIQUE.equals(partTypeService.checkPartTypeNumberUnique(partType)))
		{
			return AjaxResult.error("新增产品类别'" + partType.getNumber() + "'失败,编码已存在."); 
		}
		
		partType.setCreateBy(SecurityUtils.getUserName());
		return toAjax(partTypeService.insertPartType(partType));
	}
	
	@Log(title = "产品分类管理", businessType = BusinessType.UPDATE)
	@PutMapping
	public AjaxResult edit(@Validated @RequestBody PartType partType)
	{
		if (UserConstants.NOT_UNIQUE.equals(partTypeService.checkPartTypeNumberUnique(partType)))
		{
			return AjaxResult.error("修改产品分类'" + partType.getName() + "'失败, 编码已存在.");
		}
//		else if (partType.getParentId().equals(partType.getId()))
//		{
//			return AjaxResult.error("修改产品分类'" + partType.getName() + "'失败, 上级分类不能是自己.");
//		}
		
		// 未选择上级分类
		if (partType.getParentId() == null)
		{
			partType.setParentId(0L);
		}
		else
		{
			// 父级分类不能是自己所有子层级中的某个分类
			PartType parentType = partTypeService.selectPartTypeById(partType.getParentId());
			String[] arr = parentType.getAncestors().split(",");
			String id = partType.getId().toString();
			for (String s : arr)
			{
				if (id.equals(s))
				{
					return AjaxResult.error("修改产品分类'" + partType.getName() + "'失败,上级分类不能是自己的子分类.");
				}
			}
		}
		
		partType.setUpdateBy(SecurityUtils.getUserName());
		return toAjax(partTypeService.updatePartType(partType));
	}
	
	@Log(title = "产品分类管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{id}")
	public AjaxResult remove(@PathVariable Long id)
	{
		if (partTypeService.hasChildrenById(id))
		{
			return AjaxResult.error("存在下级类别,不允许删除.");
		}
		return toAjax(partTypeService.deletePartTypeById(id));
	}
}
