/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
        Circle[] c1 = new Circle[10];
        String[] color = {"Green","Orange","Red","Yellow","Purple","Blue","Sky"};
        
        for (int i = 0; i < c1.length; i++) {
            c1[i] = new Circle(i+(2*5),color[(int)(Math.random()*7)]);
        }
        
        for (int i = 0; i < c1.length; i++) {
             System.out.println(c1[i].toString());
             System.out.println("radius of c"+ (i+1) +" is " + c1[i].getArae()+" mm\n");
        }

        System.out.println("Total arae of Circle is " + (getTotalArae(c1)));
        
 }
    
    static double getTotalArae(Circle[] c) {
        double totalArae = 0;
        for (Circle circle : c) {
            totalArae += circle.getArae();
        }
        return totalArae;
    }
    
}
