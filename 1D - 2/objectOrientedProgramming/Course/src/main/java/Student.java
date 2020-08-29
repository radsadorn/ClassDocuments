
import java.time.LocalDateTime;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Student {
    private int id;
    private String name;
    LocalDateTime dob;
    Course[] course = new Course[7];
    
    public Student(String name, int id){
        this.name = name;
        this.id = id;
        for (int i = 0; i < course.length; i++) {
            course[i] = new Course();
        }
    }
    
    public void addCourse(Course newCourse){
        
    }
    
    public void setDob(LocalDateTime dob){
        this.dob = dob;
    }
    
    public String displayCourse() {
        
        StringBuilder strbd = new StringBuilder();
        for (int i = 0; i < this.course.length; i++) {
            strbd.append(course[i] + " " );
        }
        return strbd.toString();
    }

    @Override
    public String toString() {
        return "Student{ " + "id = " + id + ", name = " + name + ", dob = " + dob + ", course = " + course + " }";
    }

    

    
}
