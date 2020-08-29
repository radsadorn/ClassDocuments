
import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class TestFileClass {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws FileNotFoundException {
        // TODO code application logic here
        File file = new File("TestText.txt");
        //System.out.println(file.exists());
        
        
        try (PrintWriter output = new PrintWriter(file)){
            output.print("Hello ");
            output.println("Java");
            output.println("5555");
            output.close();
        } 
            System.out.println("Okey");
        
        
//
//        File file = new File("TestText.txt");
//        System.out.println(file.exists());
//        try {
//            PrintWriter output = new PrintWriter(file);
//            output.print("Hello ");
//            output.println("Java");
//            output.println("5555");
//            output.close();
//        } catch (FileNotFoundException e) {
//            System.out.println(e);
//        }
    }
    
}
