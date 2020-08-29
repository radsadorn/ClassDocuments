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
        StackOfInteger stack = new StackOfInteger(10);
        
        for(int i=0 ; i<10; ++ i)
            stack.push(i);
        
        stack.peek();
        
        stack.pop();
        
        stack.peek();
        
        stack.push(20);
        stack.peek();
        
        
        
    }
    
}
