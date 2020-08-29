/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P1;

import java.util.Date;

/**
 *
 * @author HCARACH
 */
public abstract class Geometric {
    String color;
    Date dateCreate;

    protected Geometric() {
    }

    protected Geometric(String color) {
        this.color = color;
    }
    
    abstract double getArea();
    abstract double getPerimeter();
}

class Circle extends Geometric {
    double redius;

    public Circle(double redius) {
        this.redius = redius;
    }

    public Circle(double redius, String color) {
        super(color);
        this.redius = redius;
    }

    @Override
    double getArea() {
        return Math.PI * this.redius * this.redius;
    }

    @Override
    double getPerimeter() {
        return Math.PI * this.redius * 2;
    }
}

class Rectangle extends Geometric {
    double height;
    double width;

    public Rectangle(double height, double width) {
        this.height = height;
        this.width = width;
    }

    public Rectangle(double height, double width, String color) {
        super(color);
        this.height = height;
        this.width = width;
    }

    @Override
    double getArea() {
        return this.width * this.height;
    }

    @Override
    double getPerimeter() {
        return 2 * (this.width + this.height);
    }
}

class ComparableRectangle extends Rectangle 
        implements Comparable<ComparableRectangle>, Cloneable{

    public ComparableRectangle(double height, double width) {
        super(height, width);
    }

    public ComparableRectangle(double height, double width, String color) {
        super(height, width, color);
    }

    @Override
    public int compareTo(ComparableRectangle o) {
        if(getArea() > o.getArea())
            return 1;
        else if (getArea() < o.getArea())
            return -1;
        else return 0;
    }
    
    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}