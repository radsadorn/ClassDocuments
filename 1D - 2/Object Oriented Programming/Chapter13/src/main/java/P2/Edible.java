/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P2;

/**
 *
 * @author HCARACH
 */
public interface Edible {
    
    String howToEat();
    
}

abstract class Fruit implements Edible{
    
}

class Orange extends Fruit {

    @Override
    public String howToEat() {
        return "BITE";
    }
    
}

class Apple extends Fruit {

    @Override
    public String howToEat() {
        return "BITE";
    }
    
}
