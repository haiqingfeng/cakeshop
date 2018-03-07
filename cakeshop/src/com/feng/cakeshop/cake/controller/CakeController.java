package com.feng.cakeshop.cake.controller;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.feng.cakeshop.cake.service.CakeServiceImpl;
import com.feng.cakeshop.entity.Cake;
import com.feng.cakeshop.entity.Orders;
import com.feng.cakeshop.entity.UserLogin;
@Controller
@RequestMapping("/cake")
public class CakeController {

	@Resource
	private CakeServiceImpl cakeServiceImpl;
	
	@RequestMapping("/allCake")
	public String findAll(HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Cake> cakes = this.cakeServiceImpl.findAll();
		session.setAttribute("cakes",cakes);
		return "redirect:/front-end/products.jsp";
	}
	
	@RequestMapping("/type")
	public String findByType(@RequestParam("typeName") String typeName,HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(typeName);
		List<Cake> cakes = this.cakeServiceImpl.findByType(typeName);
		session.setAttribute("cakes", cakes);
		return "redirect:/front-end/products.jsp";	
	}
	
	@RequestMapping("/flavour")
	public String findByFlavour(@RequestParam("flavourName") String flavourName,HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(flavourName);
		List<Cake> cakes = this.cakeServiceImpl.findByFlavour(flavourName);
		session.setAttribute("cakes", cakes);
		return "redirect:/front-end/products.jsp";	
	}
	
	@RequestMapping("/size")
	public String findBySize(@RequestParam("sizeName") String sizeName,HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(sizeName);
		List<Cake> cakes = this.cakeServiceImpl.findBySize(sizeName);
		session.setAttribute("cakes", cakes);
		return "redirect:/front-end/products.jsp";	
	}
	
	@RequestMapping("/color")
	public String findByColor(@RequestParam("colorName") String colorName,HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(colorName);
		List<Cake> cakes = this.cakeServiceImpl.findByColor(colorName);
		session.setAttribute("cakes", cakes);
		return "redirect:/front-end/products.jsp";	
	}
	
	@RequestMapping("/single")
	public String single(@RequestParam("cakeId") int cakeId,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Cake cake = this.cakeServiceImpl.single(cakeId);
		session.setAttribute("cake", cake);
		return "redirect:/front-end/single.jsp";
	}
	
	@RequestMapping(value="/addCart",method=RequestMethod.POST)
	public String addCart(@RequestParam("cakeId") int cakeId,@RequestParam("count") int count,@RequestParam("size") String size, HttpServletRequest request){
		System.out.println(size);
		HttpSession session = request.getSession();
		UserLogin ul = (UserLogin) session.getAttribute("user");
		if(ul == null) {
			return "redirect:/front-end/login.jsp";
		}else {
			String user = null;
			user = ul.getUserName();
		}
		Cake cake = this.cakeServiceImpl.single(cakeId);
		String cakeName = cake.getCakeName();
		int price = cake.getLp();
		Orders order = new Orders();
		order.setCake(cakeName);
		order.setSize(size);
		order.setPrice(price);
		order.setCount(count);
		order.setUser(ul.getUserName());
		this.cakeServiceImpl.addCart(order);
		return this.findAll(request);
	}
	
	@RequestMapping("/cart")
	public String cart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("user") == null) {
			return "redirect:/front-end/login.jsp";
		}else {
			List<Orders> orders = this.cakeServiceImpl.allOrders();
			session.setAttribute("orders", orders);
			return "redirect:/front-end/cart.jsp";
		}
	}
	@RequestMapping("deleteCart")
	public String deleteCart(@RequestParam("id") int id ,HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Orders> orders = this.cakeServiceImpl.deleteCart(id);
		session.setAttribute("orders", orders);
		return "redirect:/front-end/cart.jsp";
	}

}















