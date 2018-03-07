package com.feng.cakeshop.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="color")
public class Color {

	private int colorId;
	private String colorName;
	private Set<Cake> cake;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getColorId() {
		return colorId;
	}
	public void setColorId(int colorId) {
		this.colorId = colorId;
	}
	public String getColorName() {
		return colorName;
	}
	public void setColorName(String colorName) {
		this.colorName = colorName;
	}
	@OneToMany(mappedBy="color",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Cake> getCake() {
		return cake;
	}
	public void setCake(Set<Cake> cake) {
		this.cake = cake;
	}
	
	
	
}
