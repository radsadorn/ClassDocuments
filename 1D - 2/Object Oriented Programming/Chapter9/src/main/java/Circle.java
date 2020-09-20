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
public class Circle {

    double radius;
    String color;
    boolean isFilled;

    Circle() {
    }
    
    Circle(double NewRadius, String NewColor, boolean fill ) {
        radius = NewRadius;
        color = NewColor;
        isFilled = fill;
    }

    double getArae() {
        return radius * radius * Math.PI;
    }
}

class TestCircl {

    public static void main(String[] args) {
        Circle c1 = new Circle();

        System.out.println(c1.radius);
        System.out.println(c1.color);
        System.out.println(c1.isFilled);
        
        Circle c2 = new Circle(2.5, "Green", true);
        System.out.println(c2.radius);
        System.out.println(c2.color);
        System.out.println(c2.isFilled);
    }
}
