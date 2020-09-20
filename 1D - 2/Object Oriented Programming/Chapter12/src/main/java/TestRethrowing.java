
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class TestRethrowing {
    public static void main(String[] args) {
        m1();
    }
    
    static void m1() {
        try {
            m2();
        } catch (Exception e) {
            System.out.println("at m1 message from m2: " +  e);
        }
    }
    
    static void m2() throws Exception {
        try {
            m3();
        } catch (Exception ex) {
            System.out.println("at m2 message form m3: " + ex);
            throw ex;
        }
    }
    
    static void m3() throws Exception {
        throw new Exception(" Throw from m3");
    }
    
}
