/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Test2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int n1 = 5, n2 = 0;
       
        try {
            int result = n1 / n2;
             Circle c1 = null;
            int[] n3 = new int[3];
            n3[3] = 5;
           // m1(n1, n2);
        
        }  catch (NullPointerException e) {
            System.out.println(e);
        } catch (ArithmeticException e) {
            System.out.println(e);
        } catch (IndexOutOfBoundsException e) {
            System.out.println(e);
        }
    }
    
    void m1(int n1, int n2) {
        
    }
    
}

class Circle {
    
}
