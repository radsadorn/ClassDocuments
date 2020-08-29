
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Circle {
    double radius;
    String color;
    static int numberOfObject = 0;
    
    public Circle(){
        this(1.0,"White");
        numberOfObject++;
    }
    
    public Circle(double radius, String color){
        this.radius = radius;
        this.color = color;
        numberOfObject++;
    }

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public String toString() {
        return "Circle{" + " radius = " + radius + " , color = " + color + '}';
    }
    
    public double getArae() {
        return Math.pow(radius, 2)*Math.PI;
    }
        
}
