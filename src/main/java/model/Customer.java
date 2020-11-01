package model;

public class Customer {
    private int id;
    private String name;
    private String birthDay;
    private String image;

    public Customer() {
    }

    public Customer(int id, String name, String birthDay, String image) {
        this.id = id;
        this.name = name;
        this.birthDay = birthDay;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
