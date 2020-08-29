
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class TestObjectInOutStream {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws FileNotFoundException, IOException, ClassNotFoundException {
        // TODO code application logic here
        ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream("binary4.dat"));
        out.writeUTF("Sutthirat");
        out.writeChar('A');
        out.writeObject(new Date());
        out.close();
        
        System.out.println("Finidh writing Object");
        System.out.println("Start reading Object");
        
        ObjectInputStream in = new ObjectInputStream(new FileInputStream("binary4.dat"));
        System.out.println("name : " + in.readUTF());
        System.out.println("gemder : " + in.readChar());
        System.out.println("date : " + in.readObject());
        
        
    }
    
}
