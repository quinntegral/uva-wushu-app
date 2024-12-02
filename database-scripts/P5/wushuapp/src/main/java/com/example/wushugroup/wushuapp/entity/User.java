package wushugroup.wushuapp.entity;

import jakarta.persistence.*;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userID;

    private String name;
    private double height;
    private double weight;
    private double armLength;

    @ManyToOne
    @JoinColumn(name = "currentWeapon")
    private Product currentWeapon;

    @ManyToOne
    @JoinColumn(name = "currentApparel")
    private Product currentApparel;

    private String email;
    private String phoneNumber;
    private String password;

    private boolean isExecUser;

    // Getters and Setters
    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getArmLength() {
        return armLength;
    }

    public void setArmLength(double armLength) {
        this.armLength = armLength;
    }

    public Product getCurrentWeapon() {
        return currentWeapon;
    }

    public void setCurrentWeapon(Product currentWeapon) {
        this.currentWeapon = currentWeapon;
    }

    public Product getCurrentApparel() {
        return currentApparel;
    }

    public void setCurrentApparel(Product currentApparel) {
        this.currentApparel = currentApparel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public boolean isExecUser() {
        return isExecUser;
    }

    public void setExecUser(boolean execUser) {
        isExecUser = execUser;
    }
}