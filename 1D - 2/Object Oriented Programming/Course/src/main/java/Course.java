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
    private int credit;
    private String courseID;
    private String description;
    
    public static int numberOfCourse;
    
    public Course(){
        numberOfCourse++;
    }
    
    public Course(String courseID, String courseName){
        this.setCourseID(courseID);
        this.setCourseName(courseName);
        this.setCredit(credit);
        numberOfCourse++;
    }
    
    public void setCourse(String courseID, String courseName){
        this.setCourseID(courseID);
        this.setCourseName(courseName);
        this.setCredit(credit);
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public String getCourseID() {
        return courseID;
    }

    public void setCourseID(String courseID) {
        this.courseID = courseID;
    }

    @Override
    public String toString() {
        return "Course{ " + "courseName = " + courseName + ", courseID = " + courseID + " }\n";
    }

    

    
    
}
