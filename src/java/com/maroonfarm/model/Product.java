/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.maroonfarm.model;

/**
 *
 * @author user
 */
public class Product {

    private Integer productId;
    private String productName;
    private String productInformation;
    private Double productPrice;
    private String productImage;

    public Product(Integer productId, String productName, String productInformation, Double productPrice, String productImage) {
        this.productId = productId;
        this.productName = productName;
        this.productInformation = productInformation;
        this.productPrice = productPrice;
        this.productImage = productImage;
    }

    public Product() {
        
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductInformation() {
        return productInformation;
    }

    public void setProductInformation(String productInformation) {
        this.productInformation = productInformation;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

}
