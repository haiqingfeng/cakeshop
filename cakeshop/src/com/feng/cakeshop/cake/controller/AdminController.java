package com.feng.cakeshop.cake.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.feng.cakeshop.cake.service.AdminServiceImpl;
import com.feng.cakeshop.entity.Cake;
import com.feng.cakeshop.entity.Color;
import com.feng.cakeshop.entity.Flavour;
import com.feng.cakeshop.entity.Type;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource
	private AdminServiceImpl adminServiceImpl;
	
	@RequestMapping("/findCake")
	public String findCake(HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Cake> cakes = this.adminServiceImpl.findCake();
		session.setAttribute("cakes", cakes);
		return "redirect:/backstage/index.jsp";
	}
	
	@RequestMapping("/deleteCake")
	public String deleteCake(@RequestParam("cakeId") int cakeId,HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Cake> cakes = this.adminServiceImpl.deleteCake(cakeId);
		session.setAttribute("cakes", cakes);
		return "redirect:/backstage/index.jsp";
	}
	
	@RequestMapping(value="/selectCake", method=RequestMethod.POST)
	public String selectCake(@RequestParam("name") String name,HttpServletRequest request) {
		System.out.println(name);
		HttpSession session = request.getSession();
		List<Cake> cakes = this.adminServiceImpl.selectCake(name);
		session.setAttribute("cakes", cakes);
		return "redirect:/backstage/index.jsp";
	}
	
	@RequestMapping("/editCake")
	public String editCake(@RequestParam("cakeId") int cakeId,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Cake cake = this.adminServiceImpl.editCake(cakeId);
		session.setAttribute("cake", cake);
		List<Type> types = this.adminServiceImpl.findType();
		session.setAttribute("types", types);
		List<Flavour> flavours = this.adminServiceImpl.findFlavour();
		session.setAttribute("flavours", flavours);
		List<Color> colors = this.adminServiceImpl.findColor();
		session.setAttribute("colors", colors);
		return "redirect:/backstage/editCake.jsp";
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value="commitEditCake", method=RequestMethod.POST)
	public String commitEditCake(@RequestParam("cakeId") int cakeId, @RequestParam("cakeName") String cn,
			@RequestParam("description") String de, 
			@RequestParam("p1") String p1,@RequestParam("p1") String p2,@RequestParam("p1") String p3,
			@RequestParam("typeName") String typeName,@RequestParam("flavourName") String flavourName,
			@RequestParam("colorName") String colorName,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Cake cake = (Cake) session.getAttribute("cake");
		Type type = this.adminServiceImpl.ot(typeName);
		Flavour flavour = this.adminServiceImpl.of(flavourName);
		Color color = this.adminServiceImpl.oc(colorName);
		this.adminServiceImpl.editCake1(cn, de, p1, p2, p3, type, flavour, color, cakeId);
		return this.findCake(request);
	}
	@RequestMapping("add")
	public String add(HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Type> types = this.adminServiceImpl.findType();
		session.setAttribute("types", types);
		List<Flavour> flavours = this.adminServiceImpl.findFlavour();
		session.setAttribute("flavours", flavours);
		List<Color> colors = this.adminServiceImpl.findColor();
		session.setAttribute("colors", colors);
		return "redirect:/backstage/addCake.jsp";
	}
	
	@RequestMapping(value="addCake")
	public String addCake(@RequestParam("cakeName") String cakeName,
			@RequestParam("description") String description, 
			@RequestParam("p1") String p1,@RequestParam("p1") String p2,@RequestParam("p1") String p3,
			@RequestParam("typeName") String typeName,@RequestParam("flavourName") String flavourName,
			@RequestParam("colorName") String colorName,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		Cake cake = (Cake) session.getAttribute("cake");
		Type type = this.adminServiceImpl.ot(typeName);
		Flavour flavour = this.adminServiceImpl.of(flavourName);
		Color color = this.adminServiceImpl.oc(colorName);
		cake.setCakeName(cakeName);
		cake.setDescription(description);
		cake.setP1(p1);
		cake.setP2(p2);
		cake.setP2(p3);
		cake.setType(type);
		cake.setFlavour(flavour);
		cake.setColor(color);
		this.adminServiceImpl.addCake(cake);
		return findCake(request);
	}
}
