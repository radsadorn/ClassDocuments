
import java.io.IOException;
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
public class User {
    
    //Scanner scn = new Scanner(System.in);
    
    private final String name;
    private final String fileName;
    
    private int status = 0;
    
    public User(String name, String fileName, Scanner scn) throws Exception {
        this.fileName = fileName;
        this.name = name;
        
        this.Display(scn);
    }
    
    public void Display (Scanner scn) throws IOException, Exception {
        
        System.out.println("\n************ " + this.name + " ************");
        do {
                     
            System.out.println("1 LOGIN\t2 REGISTER\t0 EXIT");
            System.out.print("WHAT IS YOUR STATUS : ");
            this.status = scn.nextInt();
            
            if(this.status != 0 && this.status != 1 && this.status != 2)
                System.out.println("\nPlease try again!");
            
        } while(this.status != 0 && this.status != 1 && this.status != 2);
        
        switch (this.status) {
            case 1:
                new Login("LOGIN",this.fileName, scn);
                break;
            case 2:
                new Register("REGISTER",this.fileName, scn);
                break;
            default:
                System.out.println("");
                break;
        }
    }
    
}
