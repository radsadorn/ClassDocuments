/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Nut
 */
public class Chevking extends Account{

    public Chevking() {
    }

    public Chevking(String name, String id, double balance) {
        super(name, id, balance);
    }
    
    @Override
    public void withdraw(double m){
        if(super.getBalance()-20-m>=0.0){
            super.withdraw(m+20);
            super.setTransactions(new Transaction('W', m, super.getBalance(), super.getId()));
        }
        else
            System.out.println("Not enough money");
    }

//    @Override
//    public String toString() {
//        return "Chevking{" + '}';
//    }
    @Override
    public String toString() {
        return super.toString();
    }
    
}
