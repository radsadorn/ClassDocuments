
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
        
        int input;
        CESmartPackage cepackage = new CESmartPackage(); 
        
        cepackage.menu();
        int round = 0 ;
        
        while(round!=4){
            cepackage.stringShow(round);
           input = scn.nextInt();
           
           if(input> 0 && input < 4){
               cepackage.select(round,input);
               round++;
               System.out.println("");
           }
           else 
                System.out.println("It's wrong! Please Enter again.");
        }
        System.out.println("*********************************************************************************");
        System.out.println(cepackage.toString());
 
    }
    
}
