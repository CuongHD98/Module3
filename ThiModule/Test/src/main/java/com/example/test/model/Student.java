package com.example.test.model;

import java.time.LocalDate;

public class Student {
    private int id;
    private String name;
    private String email;
    private LocalDate dateOfBirthday;
    private String address;
    private String phoneNumber;
    private int class_id;

    public Student(String name, String email, LocalDate dateOfBirthday,
                   String address, String phoneNumber, int class_id) {
        this.name = name;
        this.email = email;
        this.dateOfBirthday = dateOfBirthday;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.class_id = class_id;
    }

    public Student(int id, String name, String email, LocalDate dateOfBirthday,
                   String address, String phoneNumber, int class_id) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.dateOfBirthday = dateOfBirthday;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.class_id = class_id;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getDateOfBirthday() {
        return dateOfBirthday;
    }

    public void setDateOfBirthday(LocalDate dateOfBirthday) {
        this.dateOfBirthday = dateOfBirthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getClass_id() {
        return class_id;
    }

    public void setClass_id(int class_id) {
        this.class_id = class_id;
    }
}
