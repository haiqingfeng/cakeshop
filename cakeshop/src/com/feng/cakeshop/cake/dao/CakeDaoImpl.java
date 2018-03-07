package com.feng.cakeshop.cake.dao;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import com.feng.cakeshop.entity.Cake;
import com.feng.cakeshop.entity.Orders;

@Repository
public class CakeDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Cake> findAll() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Cake");
		List<Cake> cake = query.list();
		return cake;
	}
	
	//查找蛋糕种类type
	public List<Cake> findByType(String typeName) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select t.cake from Type t where t.typeName = ?").setFirstResult(0).setMaxResults(6);
		query.setParameter(0, typeName);
		List<Cake> cakes = query.list();
		return cakes;
	}
	
	//查找蛋糕种类flavour
	public List<Cake> findByFlavour(String flavourName) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select f.cake from Flavour f where f.flavourName = ?").setFirstResult(0).setMaxResults(6);
		query.setParameter(0, flavourName);
		List<Cake> cakes = query.list();
		return cakes;
	}
	
	//查找蛋糕种类size
	public List<Cake> findBySize(String sizeName) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select s.cake from Size s where s.sizeName = ?").setFirstResult(0).setMaxResults(6);
		query.setParameter(0, sizeName);
		List<Cake> cakes = query.list();
		return cakes;
	}	
	
	//查找蛋糕种类color
	public List<Cake> findByColor(String colorName) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select c.cake from Color c where c.colorName = ?").setFirstResult(0).setMaxResults(6);
		query.setParameter(0, colorName);
		List<Cake> cakes = query.list();
		return cakes;
	}
	
	//查找cake详情
	public Cake single(int cakeId) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println(cakeId);
		Cake cake = (Cake)session.get(Cake.class, cakeId);
		return cake;
	}
	
	//添加订单singleAdd
	public void addCart(Orders order) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tran = session.beginTransaction();
		session.save(order);
		session.flush();
		tran.commit();
	}
	//展示购物车
	@SuppressWarnings("unchecked")
	public List<Orders> allOrders(){
		Session session = sessionFactory.getCurrentSession();
		List<Orders> orders = session.createQuery("from Orders").list();
		return orders;
	}
	//delete order
	public List<Orders> deleteCart(int id){
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("delete from Orders c where c.id =?");
		query.setParameter(0, id);
		query.executeUpdate();
		return allOrders();
	}
}
