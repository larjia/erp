package com.industri.erp.framework.security.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.industri.erp.project.system.domain.SysUser;
import com.industri.erp.project.system.service.ISysMenuService;
import com.industri.erp.project.system.service.ISysRoleService;

/**
 * 用户权限处理
 * @author Administrator
 *
 */
@Component
public class SysPermissionService
{
	@Autowired
	private ISysRoleService roleService;
	
	@Autowired
	private ISysMenuService menuService;
	
	/**
	 * 获取角色数据权限
	 */
	public Set<String> getRolePermission(SysUser user)
	{
		Set<String> roles = new HashSet<String>();
		
		// 管理员拥有所有权限
		if (user.isAdmin())
		{
			roles.add("admin");
		}
		else
		{
			roles.addAll(roleService.selectRolePermissionByUserId(user.getUserId()));
		}
		return roles;
	}
	
	/**
	 * 获取菜单数据权限
	 */
	public Set<String> getMenuPermission(SysUser user)
	{
		Set<String> roles = new HashSet<String>();
		
		//管理员拥有所有权限
		if (user.isAdmin())
		{
			roles.add("admin");
		}
		else
		{
			roles.addAll(menuService.selectMenuPermsByUserId(user.getUserId()));
		}
		return roles;
	}
}
