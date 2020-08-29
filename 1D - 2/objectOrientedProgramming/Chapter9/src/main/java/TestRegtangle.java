/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class TestRegtangle {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Regtangle reg = new Regtangle();
        
        System.out.println(reg.length);
        System.out.println(reg.width);
        System.out.println(reg.color);
        System.out.println(reg.isFilled);
        
        double arae = reg.getArae();
        System.out.println("Araeof Regtangle is " + arae +"\n");
        
        Regtangle reg2 = new Regtangle(2.5, 3.5,"Green", true);
        System.out.println(reg2.length);
        System.out.println(reg2.width);
        System.out.println(reg2.color);
        System.out.println(reg2.isFilled);
        
        arae = reg2.getArae();
        
        System.out.println("Araeof Regtangle is " + arae);
    }
    
}
