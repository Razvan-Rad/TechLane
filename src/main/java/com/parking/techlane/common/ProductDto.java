package com.parking.techlane.common;

public class ProductDto {
    Long id;
    String name;
    String description;
    double price;
    String image;

    public ProductDto(Long id, String name, String description, double price, String image) {
        this.id = id;
        this.name=name;
        this.description=description;
        this.price=price;
        this.image=image;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Long getId() {
        return id;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
