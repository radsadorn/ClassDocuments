
import java.util.ArrayList;
//import java.util.Calendar;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Nut
 */
public class TestTransaction {
    public static void main(String[] args) {
        Account s1 = new Saving("A", "01", 1000.0);
        Account c1 = new Chevking("B", "02", 1000.0);
        Account p1 = new Privileged("C", "03", 1000.0);
        //System.out.println(s1);
        s1.deposit(50);
        s1.withdraw(30);
        System.out.println(s1.toString());
        c1.deposit(50);
        c1.withdraw(30);
        c1.withdraw(5000);
        System.out.println(c1.toString());
        p1.deposit(50);
        p1.withdraw(30);
        p1.withdraw(2000);
        System.out.println(p1.toString());
    }
}



class Transaction{
    char type;
    Date date;
    double amount;
    double balance;
    String description;

    public Transaction(char type, double amount, double balance, String description) {
        this.type = type;
        this.amount = amount;
        this.balance = balance;
        this.description = description;
        date = new Date();
    }

    @Override
    public String toString() {
        return "{" + "type=" + type + ", date=" + date + ", amount=" + amount
                +", balance=" 
                + balance
                + '}' + ',' + '\n';
    }
    
}