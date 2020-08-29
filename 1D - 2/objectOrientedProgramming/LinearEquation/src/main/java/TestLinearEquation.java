/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */

import java.util.Scanner;
public class TestLinearEquation {
    
    public static void main(String[] args) {
        
        Scanner scn = new Scanner(System.in);
        double a = scn.nextDouble();
        double b = scn.nextDouble();
        double c = scn.nextDouble();
        double d = scn.nextDouble();
        double e = scn.nextDouble();
        double f = scn.nextDouble();
        
        // LinearEquation linear = new LinearEquation(3.4,50.2,2.1,0.55,44.5,5.9);
        LinearEquation linear = new LinearEquation(a,b,c,d,e,f);
        
        System.out.println();
        System.out.println(linear.getA()+"x + "+linear.getB()+"y = "+linear.getE());
        System.out.println(linear.getC()+"x + "+linear.getD()+"y = "+linear.getF());
        
        if( !linear.isSolvable() )
        {
            System.out.println("The equation has no solution.");
        } 
        else
        {
            System.out.println("\nX = " + linear.getX());
            System.out.println("Y = " + linear.getY());
        }
        
    }
}
