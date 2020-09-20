/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p2;

/**
 *
 * @author HCARACH
 */
public class Circle {
    private double radius;
    private double color;
    private boolean isFilled;
    private static int numberOfObject = 0;
    
    Circle() {
        numberOfObject++;
    }
    
    public void setRadius(double newRadius){ 
        radius = newRadius;
    }
    
    public double getRadius(){
        return this.radius;
    }
    
    public double getArae(){
        return radius * radius * Math.PI;
    }
        
}
