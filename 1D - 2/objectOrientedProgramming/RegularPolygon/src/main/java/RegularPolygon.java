/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class RegularPolygon {
    private int numberOfSides;
    private int length;
    private double xOrigin;
    private double yOrigin;
    
    public RegularPolygon(){
        
    }
    
    public RegularPolygon(int numberOfSides, int length){
        this.numberOfSides = numberOfSides;
        this.length = length;
    }
    
    public RegularPolygon(int numberOfSides, int length, double xOrigin, double yOrigin){
        this.numberOfSides = numberOfSides;
        this.length = length;
        this.xOrigin = xOrigin;
        this.yOrigin = yOrigin;
    }

    //get
    public int getNumberOfSides() {
        return numberOfSides;
    }

    public int getLength() {
        return length;
    }

    public double getxOrigin() {
        return xOrigin;
    }

    public double getyOrigin() {
        return yOrigin;
    }
    
    public int  getPerimeter(){
        return this.numberOfSides * this.length;
    }
    
    public double getArae(){
        return (this.numberOfSides * this.length * this.length) / ( 4 * Math.tan( Math.PI / this.numberOfSides ));
    }

}
