
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Geometric {
    String color;
    Date dateCreate;

    public Geometric() {
    }
    
    public Geometric(String color, Date dateCreate) {
        this.color = color;
        this.dateCreate = dateCreate;
    }
    
    public void display(double r) {
        System.out.println(r);
    }
    
    public void display(double w, double h) {
        System.out.println(w +" "+h);
    }
}
