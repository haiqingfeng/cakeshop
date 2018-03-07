package com.feng.cakeshop.cake.dao;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.feng.cakeshop.entity.Cake;
import com.feng.cakeshop.entity.Color;
import com.feng.cakeshop.entity.Flavour;
import com.feng.cakeshop.entity.Type;
@Repository
public class AdminDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	//查找cake
	@SuppressWarnings("unchecked")
	public List<Cake> findCake(){
		Session session = sessionFactory.getCurrentSession();
		List<Cake> cakes = session.createQuery("from Cake").list();
		return cakes;
	}
	//删除cake
	public List<Cake> deleteCake(int cakeId){
		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("delete from Cake c where c.cakeId =?");
		query.setParameter(0, cakeId);
		query.executeUpdate();
		return findCake();
	}
	//查询Cake
	@SuppressWarnings("unchecked")
	public List<Cake> selectCake(String name){
		Session session = sessionFactory.getCurrentSession();
		String hql="from Cake c where c.cakeName like?";
		Query query = session.createQuery(hql);
		query.setParameter(0, "%"+name+"%");
		List<Cake> cakes = query.list();
		return cakes;
	}
	//修改Cake
	public Cake editCake(int cakeId) {
		Session session = sessionFactory.getCurrentSession();
		Cake cake = session.get(Cake.class, cakeId);
		return cake;
	}
	//查询type
	@SuppressWarnings("unchecked")
	public List<Type> findType(){
		Session session = sessionFactory.getCurrentSession();
		List<Type> types = session.createQuery("from Type").list();
		return types;
	}
	//find  one type
	public Type ot(String typeName) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Type where typeName=?");
		query.setParameter(0, typeName);
		Type type = (Type) query.uniqueResult();
		return type;
	}
	//查询Color
	@SuppressWarnings("unchecked")
	public List<Color> findColor(){
		Session session = sessionFactory.getCurrentSession();
		List<Color> colors = session.createQuery("from Color").list();
		return colors;
	}
	//find one color
	public Color oc(String colorName) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Color where colorName=?");
		query.setParameter(0, colorName);
		Color color = (Color) query.uniqueResult();
		return color;
	}
	//findFlavour
	@SuppressWarnings("unchecked")
	public List<Flavour> findFlavour(){
		Session session = sessionFactory.getCurrentSession();
		List<Flavour> flavours=session.createQuery("from Flavour").list();
		return flavours;
	}
	//find one flavour
	public Flavour of(String flavourName) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Flavour where flavourName=?");
		query.setParameter(0, flavourName);
		Flavour flavour = (Flavour) query.uniqueResult();
		return flavour;
	}
	//edit
	public void editCake1(String cn,String de,String p1,String p2,String p3, Type type,Flavour flavour ,Color color,int cakeId) {
		Session session = sessionFactory.getCurrentSession();
		String hql="update Cake c set c.cakeName=? c.description=? c.p1=? c.p2=? c.p3=? c.type=? c.flavour=? c.color=? where c.cakeId=?";
		Query query = session.createQuery(hql);
		query.setParameter(0, cn);
		query.setParameter(1, de);
		query.setParameter(2, p1);
		query.setParameter(3, p2);
		query.setParameter(4, p3);
		query.setParameter(5, type);
		query.setParameter(6, flavour);
		query.setParameter(7, color);
		query.setParameter(8, cakeId);
		query.executeUpdate();
	}
	//add cake
	public void addCake(Cake cake) {
		Session session = sessionFactory.getCurrentSession();
		session.save(cake);
		session.flush();
	}
}
