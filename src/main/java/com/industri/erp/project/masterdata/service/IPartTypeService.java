package com.industri.erp.project.masterdata.service;

import java.util.List;

import com.industri.erp.project.masterdata.domain.PartType;

public interface IPartTypeService
{
	// 查询产品分类数据
	public List<PartType> selectPartTypeList(PartType partType);
	// 根据Id查询产品分类
	public PartType selectPartTypeById(Long id);
	// 是否有子类型
	public boolean hasChildrenById(Long id);
	// 校验产品分类编码是否唯一
	public String checkPartTypeNumberUnique(PartType partType);
	// 校验产品分类名称是否唯一
//	public String checkPartTypeNameUnique(PartType partType);
	// 新增产品分类
	public int insertPartType(PartType partType);
	// 修改产品分类
	public int updatePartType(PartType partType);
	// 通过Id删除产品分类
	public int deletePartTypeById(Long id);
}
