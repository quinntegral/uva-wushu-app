package wushugroup.wushuapp.DTO;

public class UserRequestDTO {

    private int userID;
    private String name;
    private double height;
    private double weight;
    private double armLength;

    private Integer currentWeaponID; // Represents the ID of the currentWeapon
    private Integer currentApparelID; // Represents the ID of the currentApparel

    private String email;
    private String phoneNumber;
    private String password;
    private boolean isExecUser;

    // Constructors
    public UserRequestDTO() {}

    public UserRequestDTO(int userID, String name, double height, double weight, double armLength,
                   Integer currentWeaponID, Integer currentApparelID, String email,
                   String phoneNumber, String password, boolean isExecUser) {
        this.userID = userID;
        this.name = name;
        this.height = height;
        this.weight = weight;
        this.armLength = armLength;
        this.currentWeaponID = currentWeaponID;
        this.currentApparelID = currentApparelID;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.isExecUser = isExecUser;
    }

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

    public Integer getCurrentWeaponID() {
        return currentWeaponID;
    }

    public void setCurrentWeaponID(Integer currentWeaponID) {
        this.currentWeaponID = currentWeaponID;
    }

    public Integer getCurrentApparelID() {
        return currentApparelID;
    }

    public void setCurrentApparelID(Integer currentApparelID) {
        this.currentApparelID = currentApparelID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isExecUser() {
        return isExecUser;
    }

    public void setExecUser(boolean execUser) {
        isExecUser = execUser;
    }
}