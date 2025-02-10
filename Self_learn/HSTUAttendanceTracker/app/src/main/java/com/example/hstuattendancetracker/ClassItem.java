package com.example.hstuattendancetracker;

public class ClassItem {
    private String className;
    private String courseName;

    public ClassItem(String className, String courseName) {
        this.className = className;
        this.courseName = courseName;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }
}
