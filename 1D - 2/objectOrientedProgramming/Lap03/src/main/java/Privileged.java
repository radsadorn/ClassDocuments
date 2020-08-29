/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Nut
 */
public class Privileged extends Account{

    public Privileged() {
    }

    public Privileged(String name, String id, double balance) {
        super(name, id, balance);
    }
    
    @Override
    public void withdraw(double m){
        if(super.getBalance()-m>= -500.0){
               super.withdraw(m);
               super.setTransactions(new Transaction('W', m, super.getBalance(), super.getId()));
        }
        else
            System.out.println("Not enough money");
    }

//    @Override
//    public String toString() {
//        return "Privileged{" + '}';
//    }
    @Override
    public String toString() {
        return "Account{" + "name=" + super.getName() + ", id=" + super.getId() + ", interest=" + super.getInterest()
                + ", balance=" + super.getBalance() + ", date=" + super.getDate() +",   "+'\n'+ "transactions=" + printT();
    }
    
}
