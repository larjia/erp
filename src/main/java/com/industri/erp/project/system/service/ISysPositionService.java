package com.industri.erp.project.system.service;

import java.util.List;

import com.industri.erp.project.system.domain.SysPosition;

public interface ISysPositionService
{
	public List<SysPosition> selectPositionList(SysPosition position);
	public List<SysPosition> selectPositionAll();
	public SysPosition selectPositionById(Long positionId);
	
	/**
	 * 根据用户Id获取岗位选择框列表
	 * @param userId
	 * @return
	 */
	public List<Integer> selectPositionListByUserId(Long userId);
	
	/**
	 * 校验岗位名称
	 */
	public String checkPositionNameUnique(SysPosition position);
	
	/**
	 * 校验岗位编码
	 */
	public String checkPositionCodeUnique(SysPosition position);
	
	/**
	 * 通过岗位Id查询岗位使用数量
	 */
	public int countUserPositionById(Long positionId);
	
	/**
	 * 删除岗位信息
	 */
	public int deletePositionById(Long positionId);
	
	/**
	 * 新增岗位信息
	 */
	public int insertPosition(SysPosition position);
	
	/**
	 * 修改岗位信息
	 */
	public int updatePosition(SysPosition position);
}
