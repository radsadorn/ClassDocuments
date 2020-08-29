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
public class Test {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Fruit apple = new Apple();
        Fruit orange = new Orange();
        Chicken chicken = new Chicken();
        Animal tiger = new Tiger();
        
        System.out.println(apple.howToEat());
        System.out.println(orange.howToEat());
        System.out.println(chicken.howToEat());
        System.out.println(chicken.sound());
        System.out.println(tiger.sound());
    }
    
}
