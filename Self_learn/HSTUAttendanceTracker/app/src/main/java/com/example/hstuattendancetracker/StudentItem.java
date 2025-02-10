package com.example.hstuattendancetracker;

public class StudentItem {
    private  String studentId;
    private  String name;
    private  String status;

    public StudentItem(String studentId, String name) {
        this.studentId = studentId;
        this.name = name;
        status="";
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

