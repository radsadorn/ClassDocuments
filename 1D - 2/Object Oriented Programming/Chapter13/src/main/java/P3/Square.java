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
public class Square extends GeometricObject 
    implements Colorable{

    public Square() {
    }

    @Override
    public void howToColor() {
        System.out.println("Color all of four side");
    }
    
}
