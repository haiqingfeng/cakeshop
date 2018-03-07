package com.feng.cakeshop.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.feng.cakeshop.entity.Admin;
import com.feng.cakeshop.entity.UserLogin;
import com.feng.cakeshop.user.dao.UserLoginDaoImpl;

@Service
@Transactional(readOnly=true)
public class UserLoginServiceImpl {

	@Resource
	private UserLoginDaoImpl userLoginDaoImpl;
	
	public UserLogin userLogin(String userName,String password) {
		UserLogin ul = userLoginDaoImpl.userLogin(userName);
		if(ul != null) {
			if(ul.getPassword().equals(password)) {
				return ul;
			}else {
				return null;
			}
		}else {
			return null;
		}
	}

	public Admin adminLogin(String userName,String password) {
		Admin admin = userLoginDaoImpl.adminLogin(userName);
		if(admin != null) {
			if(admin.getPassword().equals(password)) {
				return admin;
			}else {
				return null;
			}
		}else {
			return null;
		}
	}
}
