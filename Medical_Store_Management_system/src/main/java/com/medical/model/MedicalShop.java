package com.medical.model;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;
@Data
@Entity
public class MedicalShop {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;
	private String name;
	private String type;
	private String brand;
	private String price;
	public MedicalShop() {
		// TODO Auto-generated constructor stub
	}
	public MedicalShop(int id, String name, String type, String brand, String price) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.brand = brand;
		this.price = price;
	}
}
