
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.NotSerializableException;
import java.io.ObjectOutputStream;
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
public class Register implements Serializable{
    
   //Scanner scn = new Scanner(System.in);
 
    private String fileName;
    private String name;

    public Register(String name, String fileName, Scanner scn) throws ClassNotFoundException, Exception {
        this.fileName = fileName;
        this.name = name;
        
        this.Display(scn);
    }
    
    public void Display (Scanner scn) throws FileNotFoundException, IOException, ClassNotFoundException, Exception, NotSerializableException{

        ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(this.fileName));
        
         System.out.println("\n  ======== " + this.name + " ========");
    
        Input input = new Input();
        input.Register(scn);
        out.writeObject(input);
        out.close();
    }
}
