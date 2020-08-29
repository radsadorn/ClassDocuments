/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.Scanner;
/**
 *
 * @author HCARACH
 */
public class JavaSummary {
    public static void main(String[] args) {
        Scanner scn = new Scanner(System.in);
        
//        System.out.print("INT : ");
//        int num1 = scn.nextInt();
//        System.out.println(num1);
//        
//        System.out.print("DOUBLE : ");
//        double dou = scn.nextDouble();
//        System.out.printf("%.2f", dou); 
//        char ran =  (char)('a' + Math.random()*('z'-'a'+1));
//        System.out.println("\nRANDOM is = " + ran);
//        
//        String s1 = "Computer Engineering";
//        System.out.println("Enter Sentence : " + s1);
//        String s2 = scn.nextLine();
//        System.out.println(s1 + " " + s2);
//        
//        String s3 = "456";
//        int n2 = Integer.parseInt(s3);
//        System.out.println();
//        System.out.println(n2 + 200);
//        System.out.println(s3 + 200);
//        String s4 = n2 + "";
//        System.out.println(s4 + n2);

        int[] array = new int[10];
        
        for (int i = 0; i < array.length; i++) {
            array[i] = i*2;
        }
        System.out.println();
        for (int i : array) {
            System.out.print(i+" ");
        }
        System.out.println();
        int[][] box = {{1,2},{3,4},{5,6}};
        for (int i = 0; i < box.length; i++) {
            for (int j = 0; j < box[0].length; j++) {
                System.out.print(box[i][j] + " ");
            }
            System.out.println();
        }
        
        System.out.println();
        int[][] arr = {{1,2,3},{1},{1,2,3},{1,2,3,4}};
        for (int i = 0; i < arr.length; i++) {
            for (int j = 0; j < arr[i].length; j++) {
                System.out.print(arr[i][j] + " ");
            }
            System.out.println();
        }
    }
}
