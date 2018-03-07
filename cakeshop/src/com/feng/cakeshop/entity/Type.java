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
@Table(name="type")
public class Type {

	private int typeId;
	private String typeName;
	private Set<Cake> cake;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	
	@OneToMany(mappedBy="type",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	public Set<Cake> getCake() {
		return cake;
	}
	public void setCake(Set<Cake> cake) {
		this.cake = cake;
	}
	
	
	
}
