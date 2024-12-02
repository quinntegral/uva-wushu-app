package wushugroup.wushuapp.entity;

import jakarta.persistence.*;

@Entity
public class Cart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int cartID;

    @ManyToOne
    @JoinColumn(name = "promoCodeID")
    private PromoCode promoCode;

    private double totalCost;

    @ManyToOne
    @JoinColumn(name = "userID")
    private User user;

    // Getters and Setters
    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    public PromoCode getPromoCode() {  // Update getter name
        return promoCode;
    }

    public void setPromoCode(PromoCode promoCode) {  // Update setter name
        this.promoCode = promoCode;
    }

    public double getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }

    public User getUser() {  // Update getter name
        return user;
    }

    public void setUser(User user) {  // Update setter name
        this.user = user;
    }
}