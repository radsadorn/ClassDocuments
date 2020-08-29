/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P3;

/**
 *
 * @author HCARACH
 */
public class GeometricObject implements Comparable<GeometricObject>, Colorable{

    public GeometricObject() {
    }
    
    static Object max(GeometricObject st, GeometricObject nd){
        if(st.compareTo(nd) == 1)
            return st;
        else if(st.compareTo(nd) == -1)
            return nd;
        else return new GeometricObject();
    }

    double getArea(){
        return 0;
    }
    
    @Override
    public int compareTo(GeometricObject o) {
        if(getArea() > o.getArea())
            return 1;
        else if (o.getArea() > getArea())
            return -1;
        else return 0;
    }

    @Override
    public String toString() {
        return "Two geometric is equal" ;
    }

    @Override
    public void howToColor() {
    }
    
    
}

class Circle extends GeometricObject {
    double redius;
    String name;
    
    public Circle() {
    }
        
    public Circle(double redius, String name) {
        this.redius = redius;
        this.name = name;
    }

    double getArea() {
        return Math.PI * this.redius * this.redius;
    }
    
    @Override
    public String toString() {
        return "Larger of two geometric is \" " + this.name + " \"";
    }

}

class Rectangle extends GeometricObject {
    
    double width , height;
    String name;

    public Rectangle() {
    }

    public Rectangle(double width, double height,String name) {
        this.width = width;
        this.height = height;
        this.name = name;
    }
    
    public double getArea() {
        return this.width * this.height;
    }
    
    @Override
    public String toString() {
        return "Larger of two geometric is \" " + this.name + " \"";
    }
    
 }
