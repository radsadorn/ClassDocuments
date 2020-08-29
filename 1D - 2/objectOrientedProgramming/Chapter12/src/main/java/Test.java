
import java.util.Scanner;

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
        Scanner scn = new Scanner(System.in);
        int n1 = scn.nextInt();
        int n2 = scn.nextInt();
        
        try {
            int result = m2(n1, n2);
            System.out.println("n1/n2 = " + result);
        } catch (Exception e) {
            System.out.println(e);
        }
        
        System.out.println("End of program");
    }
    
    static int m2(int n1, int n2) {
        if (n2 == 0) {
            throw new ArithmeticException();
        }
        return n1/n2;
    }
    static int m1(int n1, int n2) {
        if(n2 == 0) {
            System.out.println("divisor cannot be zero");
            System.exit(1);
        }
        return n1/n2;
    }
    
}
