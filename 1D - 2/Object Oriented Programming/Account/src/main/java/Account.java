/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */

import java.util.Date;

public class Account {
    private int id;
    private double balance;
    private double annualInterestRate;
    Date dateCreated ;
    
    private double monthlyInterestRate;
    
    public Account(){
        dateCreated = new Date();
    }
    
    public Account(int newID, double newBalance){
        id = newID;
        balance = newBalance;
        dateCreated = new Date();
    }
    
    public void setAnnualInterestRate(double newAnnualInterestRate){
        annualInterestRate = newAnnualInterestRate;
        monthlyInterestRate = annualInterestRate / (12 * 100);
    }
    
    //withdraw n deposit
    public void withdraw(double withdraw){
        balance -= withdraw;
    }
    
    public void deposit(double deposit){
        balance += deposit;
    }
    
    // get
    public double getMonthlyInterestRate(){
        return monthlyInterestRate;
    }
    
    public double getMonthlyInterest(){
        return balance * monthlyInterestRate;
    }
    
    public int getID(){
        return id;
    }
    
    public double getBalance(){
        return balance;
    }
    
    public double getAnnualInterestRate(){
        return annualInterestRate;
    }
    
    public Date getDate(){
        return dateCreated;
    }

}
