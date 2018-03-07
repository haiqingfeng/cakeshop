package com.feng.cakeshop.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="flavour")
public class Flavour {

	private int flavourId;
	private String flavourName;
	private Set<Cake> cake;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getFlavourId() {
		return flavourId;
	}
	public void setFlavourId(int flavourId) {
		this.flavourId = flavourId;
	}
	public String getFlavourName() {
		return flavourName;
	}
	public void setFlavourName(String flavourName) {
		this.flavourName = flavourName;
	}
	
	@OneToMany(mappedBy="flavour",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Cake> getCake() {
		return cake;
	}
	public void setCake(Set<Cake> cake) {
		this.cake = cake;
	}
	
}
