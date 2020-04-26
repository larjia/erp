package com.industri.erp.project.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.industri.erp.common.constant.UserConstants;
import com.industri.erp.common.utils.StringUtils;
import com.industri.erp.project.system.domain.SysPosition;
import com.industri.erp.project.system.mapper.SysPositionMapper;
import com.industri.erp.project.system.mapper.SysUserPositionMapper;
import com.industri.erp.project.system.service.ISysPositionService;

@Service
public class SysPositionServiceImpl implements ISysPositionService
{
	@Autowired
	private SysPositionMapper positionMapper;
	
	@Autowired
	private SysUserPositionMapper userPositonMapper;
	
	/** 
	 * 查询岗位信息集合
	 */
	@Override
	public List<SysPosition> selectPositionList(SysPosition position)
	{
		return positionMapper.selectPositionList(position);
	}

	@Override
	public List<SysPosition> selectPositionAll() 
	{
		return positionMapper.selectPositionAll();
	}

	@Override
	public SysPosition selectPositionById(Long positionId) 
	{
		return positionMapper.selectPositionById(positionId);
	}

	@Override
	public List<Integer> selectPositionListByUserId(Long userId) 
	{
		return positionMapper.selectPositionListByUserId(userId);
	}

	@Override
	public String checkPositionNameUnique(SysPosition position) 
	{
		Long positionId = StringUtils.isNull(position.getPositionId()) ? -1L : position.getPositionId();
		SysPosition info = positionMapper.checkPositionNameUnique(position.getPositionName());
		if (StringUtils.isNotNull(info) && info.getPositionId().longValue() != positionId.longValue())
		{
			return UserConstants.NOT_UNIQUE;
		}
		return UserConstants.UNIQUE;
	}

	@Override
	public String checkPositionCodeUnique(SysPosition position) 
	{
		Long positionId = StringUtils.isNull(position.getPositionId()) ? -1L : position.getPositionId();
		SysPosition info = positionMapper.checkPositionCodeUnique(position.getPositionCode());
		if (StringUtils.isNotNull(info) && info.getPositionId().longValue() != positionId.longValue())
		{
			return UserConstants.NOT_UNIQUE;
		}
		return UserConstants.UNIQUE;
	}

	@Override
	public int countUserPositionById(Long positionId) 
	{
		return userPositonMapper.countUserPositionById(positionId);
	}

	@Override
	public int deletePositionById(Long positionId) 
	{
		return positionMapper.deletePositionById(positionId);
	}

	@Override
	public int insertPosition(SysPosition position) 
	{
		return positionMapper.insertPost(position);
	}

	@Override
	public int updatePosition(SysPosition position) 
	{
		return positionMapper.updatePosition(position);
	}
}
