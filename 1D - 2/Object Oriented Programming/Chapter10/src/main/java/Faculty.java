/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Faculty {
    private Course[] courseList = new Course[3];
    
    public Faculty(){
        for (int i = 0; i < courseList.length; i++) {
            courseList[i] = new Course();
        }
    }
    
    public void adCourse(Course c){
        
    }
}
