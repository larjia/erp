package com.industri.erp.project.system.domain;

import java.util.ArrayList;
import java.util.List;

import com.industri.erp.framework.web.domain.BaseEntity;

/**
 * 部门表 sys_dept
 * @author JiangL
 *
 */
public class SysDept extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	// 部门Id
	private Long deptId;
	// 父部门Id
	private Long parentId;
	// 祖级列表
	private String ancestors;
	// 部门名称
	private String deptName;
	// 显示顺序
	private String orderNum;
	// 负责人
	private String leader;
	// 联系电话
	private String phone;
	// 邮箱
	private String email;
	// 部门状态 0正常 1 停用
	private String status;
	// 删除标志 0存在 2删除
	private String delFlag;
	// 车间部门标志(0代表非车间部门1代表车间部门)
	private String sfFlag;
	// 父部门名称
	private String parentName;
	// 子部门
	private List<SysDept> children = new ArrayList<SysDept>();
	
	public Long getDeptId() {
		return deptId;
	}
	
	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}
	
	public Long getParentId() {
		return parentId;
	}
	
	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}
	
	public String getAncestors() {
		return ancestors;
	}
	
	public void setAncestors(String ancestors) {
		this.ancestors = ancestors;
	}
	
	public String getDeptName() {
		return deptName;
	}
	
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	
	public String getOrderNum() {
		return orderNum;
	}
	
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	
	public String getLeader() {
		return leader;
	}
	
	public void setLeader(String leader) {
		this.leader = leader;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getDelFlag() {
		return delFlag;
	}
	
	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}
	
	public String getSfFlag()
	{
		return sfFlag;
	}

	public void setSfFlag(String sfFlag)
	{
		this.sfFlag = sfFlag;
	}

	public String getParentName() {
		return parentName;
	}
	
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}
	
	public List<SysDept> getChildren() {
		return children;
	}
	
	public void setChildren(List<SysDept> children) {
		this.children = children;
	}
}
