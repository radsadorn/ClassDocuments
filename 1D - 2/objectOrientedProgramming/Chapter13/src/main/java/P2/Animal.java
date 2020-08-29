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
public abstract class Animal {

    protected Animal() {
    }
    
    public abstract String sound();
}

class Chicken extends Animal implements Edible{
    
    String sound;
    @Override
    public String sound() {
        return this.sound;
    }

    @Override
    public String howToEat() {
        return "GO TO KFC.!";
    }
    
}

class Tiger extends Animal {

        String sound;
    @Override
    public String sound() {
        return this.sound;
    }
    
}