
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
public class TestATM {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Scanner scn = new Scanner(System.in);
                
        System.out.print("Enter an id : ");
        int id = scn.nextInt();
        int menu = 0;
        
        ATM account = new ATM(id, 100);
        
        while(menu != 4) {
            account.Menu();
            menu = scn.nextInt();
            
            account.getMenu(menu);
        }
        
        
    }
    
}
