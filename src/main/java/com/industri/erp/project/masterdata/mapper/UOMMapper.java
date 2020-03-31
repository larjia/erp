package com.industri.erp.project.masterdata.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.industri.erp.project.masterdata.domain.UOM;

public interface UOMMapper
{
	// 查询计量单位数据
	public List<UOM> selectUOMList(UOM uom);
	// 根据Id查询计量单位
	public UOM selectUOMById(Long id);
	// 根据计量单位编码查询物料
	public UOM selectUOMByNumber(String number);
	// 校验计量单位编码是否唯一
	public UOM checkUOMNumberUnique(@Param("number") String number);
	// 新增计量单位
	public int insertUOM(UOM uom);
	// 修改计量单位
	public int updateUOM(UOM uom);
	// 删除计量单位
	public int deleteUOMById(Long id);
	// 通过编码删除计量单位
	public int deleteUOMByNumber(String number);
	// 通过编码删除计量单位
	public int deleteUOMByIds(Long[] ids);
}
