
import java.util.ArrayList;
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
public class Account {
    private String name;
    private String id;
    private double interest = 1.5;
    private double balance;
    private Date date;
    private ArrayList<Transaction> transactions = new ArrayList<>();

    public Account() {
        transactions.add(new Transaction('N', balance, balance, id));
    }

    public double getInterest() {
        return interest;
    }

    public void setInterest(double interest) {
        this.interest = interest;
    }

    public ArrayList<Transaction> getTransactions() {
        return transactions;
    }

    public void setTransactions(Transaction t) {
        this.transactions.add(t);
    }

    public Account(String name, String id, double balance) {
        this.name = name;
        this.id = id;
        this.balance = balance;
        date = new Date();
        transactions.add(new Transaction('N', balance, balance, id));
    }
    
    public void withdraw(double m){
        balance -= m;
        transactions.add(new Transaction('W', m, balance, name));
    }
    
    public void deposit(double m){
        balance += m;
        transactions.add(new Transaction('D', m, balance, name));
    }

    public String printT(){
        String s = "";
        for (int i = 0; i < transactions.size(); i++) {
            s += transactions.get(i).toString();
        }
        return s;
    }

    @Override
    public String toString() {
        return "Account{" + "name=" + name + ", id=" + id + ", interest=" + interest 
                + ", balance=" + balance + ", date=" + date +",   "+'\n'+ "transactions=" + printT();
    }
    
    

    public double getMonthlyInterest(){
        return balance*(interest/100)/12;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public Date getDate() {
        //Date d2;
        return new Date();
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    
}
