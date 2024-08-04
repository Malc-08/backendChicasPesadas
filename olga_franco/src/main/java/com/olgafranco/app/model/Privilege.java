package com.olgafranco.app.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="roles")
public class Privilege {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column(name="name", length=45, nullable=false)
	private String name;
	
	@Column(name="description", length=150, nullable=true)
	private String description;

	public Privilege() {}
	
	public Privilege(Long id, String name, String description) {
		this.id = id;
		this.name = name;
		this.description = description;
	}
	
	public static Privilege setUserRole(int roleId) {
		return new Privilege(  (long) roleId, "", "");
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	} 
	
	
	
}