/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Course {

    private String courseName;
    private String[] students = new String[100];
    private int numberOfStudents;

    public Course() {
    }

    public Course(String courseName) {
        this.courseName = courseName;
    }

    public void addStudent(String student) {
        this.students[numberOfStudents++] = student;
    }

    public String getCourseName() {
        return courseName;
    }

    public String[] getStudent() {
        return students;
    }

    public int getNumberOfStudents() {
        return numberOfStudents;
    }

    public void dropStudent(String student) {
        for (int i = 0; i < this.numberOfStudents; i++) {
            if (this.students[i] == student || this.students[i] == "") {
                this.students[i] = this.students[i + 1];
                this.students[i + 1] = "";
            }
        }
        this.numberOfStudents--;
    }

    public void clear() {
        for (String student : students) {
            student = "";
        }
        this.numberOfStudents = 0;
    }

    public String getStudentList() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.numberOfStudents; ++i) {
               sb .append(students[i] + "\n");
        }
        return sb.toString();
    }
}
