
import java.io.Serializable;
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
public  class Input implements Serializable{

     private String username;
    private String password = "";
    private String passwordConfirm = "";
    private String answer;

    public Input() {
    }
    
    public void Register(Scanner scn) {
        
        do {
        System.out.print("USERNAME : \t\t");
        this.username = scn.nextLine();
        } while(username == "" && this.username == "\n");
        
        do {
            
            if(!this.password.equals(this.passwordConfirm))
                System.out.println("Please try again!");
            
            System.out.print("PASSWORD : \t\t");
            this.password = scn.nextLine();
            System.out.print("CONFIRM PASSWORD : \t");
            this.passwordConfirm = scn.nextLine();
            
            System.out.println(this.username);
            System.out.println(this.password);
            System.out.println(this.passwordConfirm);
        } while(!this.password.equals(this.passwordConfirm));
        
        System.out.println("What is your father name?");
        System.out.print("Answer : ");
        this.answer = scn.nextLine();
    }
    
    public void Login(Scanner scn) {
        
//        System.out.print("USERNAME : \t\t");
//        this.username = scn.nextLine();
//        
//        do {
//            
//            if(!this.password.equals(this.passwordConfirm))
//                System.out.println("Please try again!");
//            
//            System.out.print("PASSWORD : \t\t");
//            this.password = scn.nextLine();
//            System.out.print("CONFIRM PASSWORD : \t");
//            this.passwordConfirm = scn.nextLine();
//            
//            System.out.println(this.username);
//            System.out.println(this.password);
//            System.out.println(this.passwordConfirm);
//        } while(!this.password.equals(this.passwordConfirm));
//        
//        System.out.println("What is your father name?");
//        System.out.print("Answer : ");
//        this.answer = scn.nextLine();
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getAnswer() {
        return answer;
    }
    
    
}
