
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
public class TestCourse {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
         Student std = new Student("RADSADORN", 62010966);
         
         //std.setDob(LocalDateTime.of(2001,14,5,0,0));
         
         System.out.println(std.toString());
         
         Course c1 = new Course("01076004","OOP");
         std.addCourse(c1);
    }
    
}
