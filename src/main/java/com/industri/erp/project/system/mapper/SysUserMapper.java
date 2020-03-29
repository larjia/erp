package com.industri.erp.project.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.industri.erp.project.system.domain.SysUser;

/**
 * 用户表
 * @author Administrator
 *
 */
public interface SysUserMapper
{
	/**
	 * 根据条件分页查询用户列表
	 * 
	 * @param sysUser 用户信息
	 * @return 用户信息集合信息
	 */
	public List<SysUser> selectUserList(SysUser sysUser);
	
	/**
	 * 通过用户名查询用户
	 */
	public SysUser selectUserByUserName(String userName);
	
	/**
	 * 通过用户Id查询用户
	 */
	public SysUser selectUserById(Long userId);
	
	/**
	 * 新增用户信息
	 */
	public int insertUser(SysUser user);
	
	/**
	 * 修改用户信息
	 */
	public int updateUser(SysUser user);
	
	/**
	 * 修改用户头像
	 * 
	 * @param userName 用户名
	 * @param avatar 头像地址
	 * @return 结果
	 */
	public int updateUserAvatar(@Param("userName") String userName, @Param("avatar") String avatar);
	
	/**
	 * 重置用户密码
	 */
	public int resetUserPwd(@Param("userName") String userName, @Param("password") String password);
	
	/**
	 * 通过用户Id删除用户
	 */
	public int deleteUserById(Long userId);
	
	/**
	 * 批量删除用户信息
	 */
	public int deleteUserByIds(Long[] userIds);
	
	/**
	 * 校验用户名称是否唯一
	 */
	public int checkUserNameUnique(String userName);
	
	/**
	 * 校验手机号是否唯一
	 */
	public SysUser checkPhoneUnique(String phoneNumber);
	
	/**
	 * 校验email是否唯一
	 */
	public SysUser checkEmailUnique(String email);
}
