
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
public class Home {
    
    Scanner scn = new Scanner(System.in);
    private int status = 0;
    
    private void Input() throws IOException, Exception {
        
        System.out.println("\n------------ HOME ------------");
        
        do {
            
            if(this.status != 0 && this.status != 1 && this.status != 2 )
                System.out.println("\nPlease try again!");
            
            System.out.println("1 USER\t2 ADMIN\t0 EXIT");
            System.out.print("WHAT IS YOUR STATUS : ");
        
            this.status = scn.nextInt();
        } while(this.status != 0 && this.status != 1 && this.status != 2);
        
        switch (this.status) {
            case 1:
                new User("USER","user.dat",scn);
                break;
            case 2:
                new User("ADMIN","admin.dat",scn);
                break;
            default:
                System.out.println("");
                break;
        }
    }

    public int getStatus() {
        return status;
    }
    
    public static void main(String[] args) throws IOException, Exception {
        Home home = new Home();
        
        do {
            home.Input();
        } while(home.getStatus() != 0);
        
        System.out.println("STOP Program");
        System.out.println("--------------------------------------");
    }
}
