package com.olgafranco.app.model;

import java.time.LocalDateTime;

import jakarta.persistence.*;

@Entity
@Table(name = "stock")
public class Stock {

	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name = "stock_id")
	    private Long stockId;

	    @Column(name = "fk_product_id")
	    private Long fkProductId;

	    @Column(name = "stock_quantity")
	    private Integer stockQuantity;

	    @Column(name = "update_date")
	    private LocalDateTime updateDate;

	    @Column(name = "products_product_id")
	    private Long productsProductId;

	    public Long getStockId() {
	        return stockId;
	    }

	    public void setStockId(Long stockId) {
	        this.stockId = stockId;
	    }

	    public Long getFkProductId() {
	        return fkProductId;
	    }

	    public void setFkProductId(Long fkProductId) {
	        this.fkProductId = fkProductId;
	    }

	    public Integer getStockQuantity() {
	        return stockQuantity;
	    }

	    public void setStockQuantity(Integer stockQuantity) {
	        this.stockQuantity = stockQuantity;
	    }

	    public LocalDateTime getUpdateDate() {
	        return updateDate;
	    }

	    public void setUpdateDate(LocalDateTime updateDate) {
	        this.updateDate = updateDate;
	    }

	    public Long getProductsProductId() {
	        return productsProductId;
	    }

	    public void setProductsProductId(Long productsProductId) {
	        this.productsProductId = productsProductId;
	    }
	}
