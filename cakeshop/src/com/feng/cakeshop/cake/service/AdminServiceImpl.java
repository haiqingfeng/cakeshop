package com.feng.cakeshop.cake.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.feng.cakeshop.cake.dao.AdminDaoImpl;
import com.feng.cakeshop.entity.Cake;
import com.feng.cakeshop.entity.Color;
import com.feng.cakeshop.entity.Flavour;
import com.feng.cakeshop.entity.Type;

@Service
@Transactional
public class AdminServiceImpl {

 	@Resource
 	private AdminDaoImpl adminDaoImpl;
 	//findCake
	public List<Cake> findCake(){
 		return this.adminDaoImpl.findCake();
 	}
	//deleteCake
	public List<Cake> deleteCake(int cakeId){
		return this.adminDaoImpl.deleteCake(cakeId);
	}
	//selectCake
	public List<Cake> selectCake(String name){
		return this.adminDaoImpl.selectCake(name);
	}
	//editCake
	public Cake editCake(int cakeId) {
		return this.adminDaoImpl.editCake(cakeId);
	}
	//findType
	public List<Type> findType(){
		return this.adminDaoImpl.findType();
	}
	//find one type
	public Type ot(String typeName) {
		return this.adminDaoImpl.ot(typeName);
	}
	//findColor
	public List<Color> findColor(){
		return this.adminDaoImpl.findColor();
	}
	//find one color
	public Color oc(String colorName) {
		return this.adminDaoImpl.oc(colorName);
	}
	//findFlavour 
	public List<Flavour> findFlavour(){
		return this.adminDaoImpl.findFlavour();
	} 
	//find one flavour
	public Flavour of(String flavourName) {
		return this.adminDaoImpl.of(flavourName);
	}	
	//editCake1
	public void editCake1(String cn,String de,String p1,String p2,String p3, Type type,Flavour flavour ,Color color,int cakeId) {
		this.adminDaoImpl.editCake1(cn, de, p1, p2, p3, type, flavour, color, cakeId);
	}
	//add cake
	public void addCake(Cake cake) {
		this.adminDaoImpl.addCake(cake);
	}
}
