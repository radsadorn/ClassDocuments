/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P1;

/**
 *
 * @author HCARACH
 */
public class TestGeometric {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws CloneNotSupportedException {
        // TODO code application logic here
        ComparableRectangle r1 = new ComparableRectangle(10,20);
        
        ComparableRectangle r2 = new ComparableRectangle(25,8); 
        
        System.out.println(r1.compareTo(r2));
        
        ComparableRectangle r3 = (ComparableRectangle) r1.clone();
        System.out.println(r1.compareTo(r1));
        System.out.println(r1 == r3);
        
    }
    
}
