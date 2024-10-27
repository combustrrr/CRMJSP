package com.yourapp.models;

public class Customer {
    private String id;
    private String name;
    private String email;
    private String phone;
    private String company;

    // Default constructor
    public Customer() {
    }

    // Parameterized constructor
    public Customer(String id, String name, String email, String phone, String company) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.company = company;
    }

    // Getters
    public String getId() { return id; }
    public String getName() { return name; }
    public String getEmail() { return email; }
    public String getPhone() { return phone; }
    public String getCompany() { return company; }

    // Setters
    public void setId(String id) { this.id = id; }
    public void setName(String name) { this.name = name; }
    public void setEmail(String email) {
        if (email != null && !email.isEmpty()) {
            this.email = email;
        } else {
            throw new IllegalArgumentException("Email cannot be null or empty.");
        }
    }
    public void setPhone(String phone) { this.phone = phone; }
    public void setCompany(String company) { this.company = company; }

    // toString method for debugging
    @Override
    public String toString() {
        return "Customer{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", company='" + company + '\'' +
                '}';
    }
}
