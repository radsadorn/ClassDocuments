/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p2;

/**
 *
 * @author HCARACH
 */
public class TestCircle {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Circle c1 = new Circle();
        
        double radius = (int)(Math.random()*10);
        
        c1.setRadius(radius);
        System.out.println("Radius is " + c1.getRadius() + "\n"+"Arae of Circle is "+ c1.getArae());
        
    }
    
}
