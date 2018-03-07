package com.feng.cakeshop.cake.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.feng.cakeshop.cake.dao.CakeDaoImpl;
import com.feng.cakeshop.entity.Cake;
import com.feng.cakeshop.entity.Orders;

@Service
@Transactional(readOnly=true)
//事物类型
public class CakeServiceImpl {

	@Resource
	private CakeDaoImpl cakeDaoImpl;
	
	public List<Cake> findAll() {
		return this.cakeDaoImpl.findAll();
		
	}
	
	//Type
	public List<Cake> findByType(String typeName){
		return this.cakeDaoImpl.findByType(typeName);
	}

	//Flavour
	public List<Cake> findByFlavour(String flavourName){
		return this.cakeDaoImpl.findByFlavour(flavourName);
	}
	
	//Size
	public List<Cake> findBySize(String sizeName){
		return this.cakeDaoImpl.findBySize(sizeName);
	}
	
	//color
	public List<Cake> findByColor(String colorName){
		return this.cakeDaoImpl.findByColor(colorName);
	}
	
	//single   cake详细信息
	public Cake single(int cakeId) {	
		return this.cakeDaoImpl.single(cakeId);
	}
	
	//singleAdd
	public void addCart(Orders order) {
		this.cakeDaoImpl.addCart(order);
	}
	// play all orders
	public List<Orders> allOrders(){
		return this.cakeDaoImpl.allOrders();
	}
	//delete cart 
	public List<Orders> deleteCart(int id){
		return this.cakeDaoImpl.deleteCart(id);
	}
}
