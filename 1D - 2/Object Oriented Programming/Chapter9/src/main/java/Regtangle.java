/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Regtangle {
    double length;
    double width;
    String color;
    boolean isFilled;
    
    Regtangle() {
    }
    
    Regtangle(double NewWidth, double NewLength, String NewColor, boolean fill){
        length  = NewLength;
        width = NewWidth;
        color = NewColor;
        isFilled  = fill;
    }
    
    double getArae(){
        return length * width;
    }
}
