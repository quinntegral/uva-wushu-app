package wushugroup.wushuapp.DTO;

public class ProductRequestDTO {

    private int categoryID; // Only accept categoryID
    private String description;
    private double cost;
    private double starAmount;

    // Getters and Setters
    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
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