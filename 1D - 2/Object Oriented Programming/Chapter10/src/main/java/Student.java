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
    private Course[] courseList = new Course[7];
    
    public Student(){
        for (int i = 0; i < courseList.length; i++) {
            courseList[i] = new Course();
        }
    }
    
    public void addCourse(Course s) {
        
    }
}
