package com.industri.erp.project.masterdata.service;

import java.util.List;

import com.industri.erp.project.masterdata.domain.UOM;

public interface IUOMService
{
	// 查询计量单位数据
	public List<UOM> selectUOMList(UOM uom);
	// 根据Id查询计量单位
	public UOM selectUOMById(Long id);
	// 根据编码查询计量单位
	public UOM selectUOMByNumber(String number);
	// 校验计量单位编码是否唯一
	public String checkUOMNumberUnique(UOM uom);
	// 新增计量单位
	public int insertUOM(UOM uom);
	// 修改计量单位
	public int updateUOM(UOM uom);
	// 通过Id删除计量单位
	public int deleteUOMById(Long id);
	// 通过编码删除计量单位
	public int deleteUOMByNumber(String number);
	// 通过编码删除计量单位
	public int deleteUOMByIds(Long[] ids);
}
