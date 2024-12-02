package wushugroup.wushuapp.entity;

import jakarta.persistence.*;

@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productID;

    @ManyToOne
    @JoinColumn(name = "categoryID")
    private Category category;

    private String description;
    private double cost;
    private double starAmount;

    // Getters and Setters
    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public double getStarAmount() {
        return starAmount;
    }

    public void setStarAmount(double starAmount) {
        this.starAmount = starAmount;
    }
}