package com.feng.cakeshop.user.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.feng.cakeshop.entity.Admin;
import com.feng.cakeshop.entity.UserLogin;

@Repository
public class UserLoginDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
	public UserLogin userLogin(String userName) {
		Session session = sessionFactory.getCurrentSession();
		UserLogin ul = session.get(UserLogin.class, userName);
		return ul;
	}
	
	public Admin adminLogin(String userName) {
		Session session = sessionFactory.getCurrentSession();
		Admin admin = session.get(Admin.class, userName);
		System.out.println(admin.getUserName());
		return admin;
	}
}