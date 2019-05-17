package com.juztbuy.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import com.google.gson.annotations.Expose;


import org.springframework.web.multipart.MultipartFile;


@Entity
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	
	
	@Expose
	private int productId;
	
	@Expose
	private String product_name;
	@Expose
	private double product_price;
	@Expose
	private String product_description;
	@Expose
	private int product_unit;
	@Expose
	private String product_img;
	@Expose
	private int subcategoryId;
	@ManyToOne(targetEntity=SubCategory.class )
	@JoinColumn(name="subcategoryId",nullable=false,updatable=false,insertable=false)
	

	@Expose
	private SubCategory subCategory;
	@Transient
	private MultipartFile thumbnail;
	
	
	
	
	
	public int getSubcategoryId() {
		return subcategoryId;
	}
	public void setSubcategoryId(int subcategoryId) {
		this.subcategoryId = subcategoryId;
	}
	public SubCategory getSubCategory() {
		return subCategory;
	}
	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public double getProduct_price() {
		return product_price;
	}
	public void setProduct_price(double product_price) {
		this.product_price = product_price;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	public int getProduct_unit() {
		return product_unit;
	}
	public void setProduct_unit(int product_unit) {
		this.product_unit = product_unit;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public MultipartFile getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(MultipartFile thumbnail) {
		this.thumbnail = thumbnail;
	}
    
	
	
}
