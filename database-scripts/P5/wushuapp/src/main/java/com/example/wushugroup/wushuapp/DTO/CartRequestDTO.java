package wushugroup.wushuapp.DTO;

public class CartRequestDTO {

    private Integer cartID;
    private Integer promoCodeID;
    private double totalCost;
    private Integer userID;

    // Constructors
    public CartRequestDTO() {}

    public CartRequestDTO(Integer cartID, Integer promoCodeID, double totalCost, Integer userID) {
        this.cartID = cartID;
        this.promoCodeID = promoCodeID;
        this.totalCost = totalCost;
        this.userID = userID;
    }

    // Getters and Setters
    public Integer getCartID() {
        return cartID;
    }

    public void setCartID(Integer cartID) {
        this.cartID = cartID;
    }

    public Integer getPromoCodeID() {
        return promoCodeID;
    }

    public void setPromoCodeID(Integer promoCodeID) {
        this.promoCodeID = promoCodeID;
    }

    public double getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }

    public Integer getUserID() {
        return userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }
}