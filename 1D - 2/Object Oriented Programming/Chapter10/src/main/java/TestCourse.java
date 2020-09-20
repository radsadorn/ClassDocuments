/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class TestCourse {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Course course = new Course();
        
        course.addStudent("Sirawit");
        course.addStudent("Sahatus");
        course.addStudent("Thanakorn");
        
        System.out.println(course.getStudentList()); 
        
        System.out.println("");
        course.dropStudent("Sahatus");
        System.out.println(course.getStudentList()); 
        
        course.clear();
        System.out.println(course.getStudentList()); 
    }
    
}
