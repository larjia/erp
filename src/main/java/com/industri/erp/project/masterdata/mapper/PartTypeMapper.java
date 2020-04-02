package com.industri.erp.project.masterdata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.industri.erp.project.masterdata.domain.PartType;

public interface PartTypeMapper
{
	// 查询产品分类数据
	public List<PartType> selectPartTypeList(PartType partType);
	// 根据Id查询产品分类
	public PartType selectPartTypeById(Long id);
	// 是否存在子类型
	public int hasChildrenById(Long id);
	// 校验产品分类编码是否唯一
	public PartType checkPartTypeNumberUnique(@Param("number") String number, @Param("parentId") Long parentId);
	// 校验产品分类名称是否唯一
	public PartType checkPartTypeNameUnique(@Param("name") String name, @Param("parentId") Long parentId);
	// 新增产品分类
	public int insertPartType(PartType partType);
	// 修改产品分类
	public int updatePartType(PartType partType);
	// 通过Id删除产品分类
	public int deletePartTypeById(Long id);
}
