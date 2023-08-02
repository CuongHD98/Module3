package com.example.test.model;

public class ClassRoom {
    private int id;
    private String classRoom;

    public ClassRoom() {
    }

    public ClassRoom(int id, String classRoom) {
        this.id = id;
        this.classRoom = classRoom;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getClassRoom() {
        return classRoom;
    }

    public void setClassRoom(String classRoom) {
        this.classRoom = classRoom;
    }
}
