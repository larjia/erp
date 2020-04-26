package com.industri.erp.framework.security.service;

import java.util.Set;

import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.industri.erp.common.utils.ServletUtils;
import com.industri.erp.common.utils.StringUtils;
import com.industri.erp.framework.security.LoginUser;

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
	 * 判断是否包含权限
	 */
	private boolean hasPermission(Set<String> permissions, String permission)
	{
		return permissions.contains(ALL_PERMISSION) || permissions.contains(StringUtils.trim(permission));
	}
}
