/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Fruit {
    int fProp;
    public static void main(String[] args) {
        Object f = new Fruit();
        Apple a1 = new Apple();
        Orenge o1 = new Orenge();
        
    }
    
}

class Apple extends Fruit {
    int aProp1, aProp2;
}

class Orenge extends Fruit {
    
}
