/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Circle extends Geometric {
    double radius;

    public Circle() {
    }
    
    public Circle(double radius) {
        this.radius = radius;
    }
    
    public void display(double r) {
        System.out.println(r);
    }
    
    public double getDiameter() {
        return radius + radius;
    }
    
}
