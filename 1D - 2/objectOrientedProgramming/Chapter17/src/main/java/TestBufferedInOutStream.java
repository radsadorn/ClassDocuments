
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
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
public class TestBufferedInOutStream {
    public static void main(String[] args) throws FileNotFoundException, IOException {
        BufferedInputStream in = new BufferedInputStream(new FileInputStream("binary2.dat"));
        BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream("binary3.dat"));
        
        int nByte = 0;
        
        while(in.available() != 0){
            out.write(in.read());
            nByte++;
        }
        out.close();
        System.out.println("Finish");
        
        System.out.println("number of Byte : " + nByte);
        
        DataInputStream input = new DataInputStream(new FileInputStream("binary3.dat"));
        System.out.println("Name : " + input.readUTF());
        System.out.println("Age : " + input.readInt());
        System.out.println("Height : " + input.readDouble());
        
        input.close();
        
    }
}
