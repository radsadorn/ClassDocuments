
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
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
public class Login {

    Scanner scn = new Scanner(System.in);
    private String username;
    private String password;
    private String answer;
    
    private final String fileName;
    private final String name;
    
    ArrayList<Input> list = new ArrayList<>();

    public Login(String name, String fileName,Scanner scn) throws IOException, FileNotFoundException, ClassNotFoundException {
        this.fileName = fileName;
        this.name = name;
        
        this.Display(scn);
    }
    
    public void Display (Scanner scn) throws FileNotFoundException, IOException, ClassNotFoundException {
        
        ObjectInputStream in = new ObjectInputStream(new FileInputStream(this.fileName));
        
        System.out.println("   ======== " + this.name + "   ========");
        
        
        Input input = new Input();
        
        while(in.available() != 0) {
            input = (Input) in.readObject();
            System.out.println(input.getUsername());
            System.out.println(input.getPassword());
            System.out.println(input.getAnswer());
        }
    }

}
