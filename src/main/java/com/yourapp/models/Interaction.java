package com.yourapp.models;

public class Interaction {
    private String date;
    private String type;
    private String notes;

    // Constructor, Getters, and Setters
    public Interaction(String date, String type, String notes) {
        this.date = date;
        this.type = type;
        this.notes = notes;
    }

    public String getDate() { return date; }
    public String getType() { return type; }
    public String getNotes() { return notes; }
}
