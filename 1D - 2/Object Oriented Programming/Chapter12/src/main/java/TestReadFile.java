
import java.io.File;
import java.io.FileNotFoundException;
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
public class TestReadFile {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws FileNotFoundException {
        // TODO code application logic here
        File file = new File("TestText.txt");
        Scanner scn = new Scanner(file);
        ArrayList<String> list = new ArrayList<>();
        
        while(scn.hasNext()) {
            list.add(scn.next());
        }
        
        for (String a : list) {
            System.out.println(a);
        }
    }
    
}
