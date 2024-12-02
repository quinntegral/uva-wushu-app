package wushugroup.wushuapp.entity;

import jakarta.persistence.*;

@Entity
public class PromoCode {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int promoCodeID;

    private String code;
    private double percent;

    // Getters and Setters
    public int getPromoCodeID() {
        return promoCodeID;
    }

    public void setPromoCodeID(int promoCodeID) {
        this.promoCodeID = promoCodeID;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public double getPercent() {
        return percent;
    }

    public void setPercent(double percent) {
        this.percent = percent;
    }
}