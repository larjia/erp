package com.industri.erp.project.production.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.industri.erp.project.production.domain.ProdReportHist;
import com.industri.erp.project.production.mapper.ProdReportHistMapper;
import com.industri.erp.project.production.service.IProdReportHistService;

/**
 * 生产报工管理 服务层
 * @author Administrator
 *
 */
@Service
public class ProdReportHistService implements IProdReportHistService
{
	@Autowired
	private ProdReportHistMapper prodReportHistMapper;

	// 查询生产报工数据
	@Override
	public List<ProdReportHist> selectProdReportHistList(ProdReportHist reportHist)
	{
		return prodReportHistMapper.selectProdReportHistList(reportHist);
	}

	// 根据Id查询生产报工记录
	@Override
	public ProdReportHist selectProdReportHistById(Long id)
	{
		return prodReportHistMapper.selectProdReportHistById(id);
	}

	// 新增生产报工
	@Override
	public int insertProdReportHist(ProdReportHist reportHist)
	{
		return prodReportHistMapper.insertProdReportHist(reportHist);
	}

	// 修改生产报工
	@Override
	public int updateProdReportHist(ProdReportHist reportHist)
	{
		return prodReportHistMapper.updateProdReportHist(reportHist);
	}

	// 通过Id删除生产报工
	@Override
	public int deleteProdReportHistById(Long id)
	{
		return prodReportHistMapper.deleteProdReportHistById(id);
	}
}
