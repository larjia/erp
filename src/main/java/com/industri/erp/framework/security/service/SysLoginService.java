package com.industri.erp.framework.security.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import com.industri.erp.common.constant.Constants;
import com.industri.erp.common.exception.CustomException;
import com.industri.erp.common.exception.user.CaptchaException;
import com.industri.erp.common.exception.user.CaptchaExpireException;
import com.industri.erp.common.exception.user.UserPasswordNotMatchException;
import com.industri.erp.common.utils.MessageUtils;
import com.industri.erp.framework.manager.AsyncManager;
import com.industri.erp.framework.manager.factory.AsyncFactory;
import com.industri.erp.framework.redis.RedisCache;
import com.industri.erp.framework.security.LoginUser;

/**
 * 登录校验方法
 * @author Administrator
 *
 */
@Component
public class SysLoginService
{
	@Autowired
	private TokenService tokenService;
	
	@Resource
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private RedisCache redisCache;
	
	/**
	 * 登录验证
	 * 
	 * @param username 用户名
	 * @param password 密码
	 * @param catpcha 验证码
	 * @param uuid 唯一标识
	 * @return 结果
	 */
	public String login(String username, String password, String code, String uuid)
	{
		String verifyKey = Constants.CAPTCHA_CODE_KEY + uuid;
		String captcha = redisCache.getCacheObject(verifyKey);
		redisCache.deleteObject(verifyKey);
		if (captcha == null)
		{
			AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, MessageUtils.message(
					"user.jcaptcha.expire")));
			throw new CaptchaExpireException();
		}
		if (!code.equalsIgnoreCase(captcha))
		{
			AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, MessageUtils.message(
					"user.jcaptcha.error")));
			throw new CaptchaException();
		}
		
		// 用户验证
		Authentication authentication = null;
		try
		{
			// 该方法会去调用UserDetailsServiceImpl.loadUserByUsername
			authentication = authenticationManager
					.authenticate(new UsernamePasswordAuthenticationToken(username, password));
		} 
		catch (Exception e)
		{
			if (e instanceof BadCredentialsException)
			{
				AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, MessageUtils.message(
						"user.password.not.match")));
				throw new UserPasswordNotMatchException();
			}
			else
			{
				AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_FAIL, e.getMessage()));
				throw new CustomException(e.getMessage());
			}
		}
		
		AsyncManager.me().execute(AsyncFactory.recordLoginInfo(username, Constants.LOGIN_SUCCESS, MessageUtils.message(
				"user.login.success")));
		LoginUser loginUser = (LoginUser) authentication.getPrincipal();
		// 生成token
		return tokenService.createToken(loginUser);
	}
}
