/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class CircleWithException {
    private double radius;

    public CircleWithException() {
    }

    public CircleWithException(double radius) {
        this.radius = radius;
    }
    
    public void setRadius(double newRadius) 
            throws IllegalArgumentException{
        if (newRadius <= 0)
            throw new IllegalArgumentException("radius cannot be negative");
        else
            this.radius = newRadius;
    }

    @Override
    public String toString() {
        return "CircleWithException{" + "radius=" + radius + '}';
    }
    
    
}

class TestCircle {
    public static void main(String[] args) {
        CircleWithException c1 = new CircleWithException();
        CircleWithException c2 = new CircleWithException();
        try {
            c1.setRadius(5);
            c2.setRadius(-5);
        } catch (IllegalArgumentException ex) {
            System.out.println(ex);
        }
        
        System.out.println(c1.toString());
        System.out.println(c2.toString());
    }
}
