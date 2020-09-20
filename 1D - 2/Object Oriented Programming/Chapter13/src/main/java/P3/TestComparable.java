/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P3;

/**
 *
 * @author HCARACH
 */
public class TestComparable {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        GeometricObject  compare = new GeometricObject();
        
        GeometricObject c1 = new Circle(5,"C1");
        GeometricObject c2 = new Circle(10,"C2");
        
        GeometricObject r1 = new Rectangle(10,20,"R1");
        GeometricObject r2 = new Rectangle(5,10,"R2");
        
        System.out.println("\n----------------------------------\n");
        System.out.println(compare.max(c1,c2));
        System.out.println("");
        System.out.println(compare.max(r1,r2));
    }
    
}
