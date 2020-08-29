
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class TestDataInOutStream {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws FileNotFoundException, IOException {
        // TODO code application logic here
            FileOutputStream  fos = new FileOutputStream("binary2.dat");
            DataOutputStream out = new DataOutputStream(fos);
            out.writeUTF("Sutthirat Phutho");
            out.writeInt(18);
            out.writeDouble(169.5);
            out.close();
            System.out.println("Finish");
            
            DataInputStream in = new DataInputStream(new FileInputStream("binary2.dat"));
            System.out.println("Name : " + in.readUTF());
            System.out.println("Age : " + in.readInt());
            System.out.println("Height : " + in.readDouble());
            in.close();
    }
    
}
