package com.industri.erp.framework.security.service;

import java.util.Set;

import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.industri.erp.common.utils.ServletUtils;
import com.industri.erp.common.utils.StringUtils;
import com.industri.erp.framework.security.LoginUser;
import com.industri.erp.project.system.domain.SysRole;

@Service("ss")
public class PermissionService 
{
	/** 所有权限标识 */
	private static final String ALL_PERMISSION = "*:*:*";
	/** 管理员角色权限标识 */
	private static final String SUPER_ADMIN = "admin";
	private static final String ROLE_DELIMITER = ",";
	private static final String PERMISSION_DELIMITER = ",";
	
	@Autowired
	private TokenService tokenService;
	
	/**
	 * 验证用户是否具备某权限
	 */
	public boolean hasPermi(String permission)
	{
		if (StringUtils.isEmpty(permission))
		{
			return false;
		}
		LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
		if (StringUtils.isNull(loginUser) || CollectionUtils.isEmpty(loginUser.getPermissions()))
		{
			return false;
		}
		return hasPermission(loginUser.getPermissions(), permission);
	}
	
	/**
	 * 验证用户是否不具备某权限,与hasPermi逻辑相反
	 */
	public boolean lacksPermi(String permission)
	{
		return hasPermi(permission) != true;
	}
	
	/**
	 * 验证用户是否具有以下任意一个权限
	 */
	public boolean hasAnyPermi(String permissions)
	{
		if (StringUtils.isEmpty(permissions))
		{
			return false;
		}
		LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
		if (StringUtils.isNull(loginUser) || CollectionUtils.isEmpty(loginUser.getPermissions()))
		{
			return false;
		}
		Set<String> authorities = loginUser.getPermissions();
		for (String permission : permissions.split(PERMISSION_DELIMITER))
		{
			if (permission != null && hasPermission(authorities, permission))
			{
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 判断用户是否拥有某个角色
	 */
	public boolean hasRole(String role)
	{
		if (StringUtils.isEmpty(role))
		{
			return false;
		}
		
		LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
		if (StringUtils.isNull(loginUser) || CollectionUtils.isEmpty(loginUser.getUser().getRoles()))
		{
			return false;
		}
		
		for (SysRole sysRole : loginUser.getUser().getRoles())
		{
			String roleKey = sysRole.getRoleKey();
			if (SUPER_ADMIN.contains(roleKey) || roleKey.contains(StringUtils.trim(role)))
			{
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 验证用户是否不具备某角色,与isRole逻辑相反
	 */
	public boolean lacksRole(String role)
	{
		return hasRole(role) != true;
	}
	
	public boolean hasAnyRoles(String roles)
	{
		if (StringUtils.isEmpty(roles))
		{
			return false;
		}
		LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
		if (StringUtils.isNull(loginUser) || CollectionUtils.isEmpty(loginUser.getUser().getRoles()))
		{
			return false;
		}
		for (String role : roles.split(ROLE_DELIMITER))
		{
			if (hasRole(role))
			{
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 判断是否包含权限
	 */
	private boolean hasPermission(Set<String> permissions, String permission)
	{
		return permissions.contains(ALL_PERMISSION) || permissions.contains(StringUtils.trim(permission));
	}
}
