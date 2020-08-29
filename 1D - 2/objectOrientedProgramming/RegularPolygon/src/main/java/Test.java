/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Test {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        RegularPolygon reg = new RegularPolygon();
        System.out.println(reg.getArae());
        
        RegularPolygon reg1 = new RegularPolygon(6,4);
         System.out.println(reg1.getArae());
        
        RegularPolygon reg2 = new RegularPolygon(10,4,5.6,7.8);
        System.out.println(reg2.getArae());
    }
    
}
