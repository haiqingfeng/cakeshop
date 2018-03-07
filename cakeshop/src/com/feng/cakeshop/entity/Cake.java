package com.feng.cakeshop.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;


@Entity
@Table(name="cake")
public class Cake{
	
	private int cakeId;
	private String cakeName;
	private String description;
	private String p1;
	private String p2;
	private String p3;
	private Flavour flavour;//多方持有一方的引用
	private Type type;//多方持有一方的引用
	private Color color;//多方持有一方的引用
	private Set<Size> size;
	private int lp;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getCakeId() {
		return cakeId;
	}
	public void setCakeId(int cakeId) {
		this.cakeId = cakeId;
	}
	public String getCakeName() {
		return cakeName;
	}
	public void setCakeName(String cakeName) {
		this.cakeName = cakeName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getP1() {
		return p1;
	}
	public void setP1(String p1) {
		this.p1 = p1;
	}
	public String getP2() {
		return p2;
	}
	public void setP2(String p2) {
		this.p2 = p2;
	}
	public String getP3() {
		return p3;
	}
	public void setP3(String p3) {
		this.p3 = p3;
	}
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@JoinColumn(name="flavourId")
	public Flavour getFlavour() {
		return flavour;
	}
	public void setFlavour(Flavour flavour) {
		this.flavour = flavour;
	}
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@JoinColumn(name="typeId")
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@JoinColumn(name="colorId")
	public Color getColor() {
		return color;
	}
	public void setColor(Color color) {
		this.color = color;
	}
	
	@OneToMany(mappedBy="cake",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	public Set<Size> getSize() {
		return size;
	}
	public void setSize(Set<Size> size) {
		this.size = size;
	}
	
	@Transient
	public int getLp() {
		Set<Size> sizes = this.getSize();
		int lp = 999999;
		for (Size size : sizes) {
			if(lp > size.getPrice()) {
				lp = size.getPrice();
			}
		}
		return lp;
	}
	public void setLp(int lp) {
		this.lp = lp;
	}
	
	
	
}