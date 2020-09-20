
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class TestProgram {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Geometric obj1 = new Circle();
        Geometric obj2 = new Rectangle();
//        Circle c1 = new Circle();
//        c1.display(5.6);
//        c1.display(2.5, 6.3);
        ArrayList<Geometric> list = new ArrayList<>();
        list.add(new Geometric());
        list.add(obj1);
        list.add(obj2);
//        for (Geometric geometric : list) {
//            geometric.display(1.2); 
//        }
        for (int i = 0; i < list.size(); i++) {
            if(list.get(i) instanceof Circle)
                ((Circle)list.get(i)).getDiameter();
        }
        
        for (int i = 0; i < list.size(); i++) {
            if(list.get(i) instanceof Rectangle)
                ((Rectangle)list.get(i)).getParameter();
        }
        
    }
    
}
