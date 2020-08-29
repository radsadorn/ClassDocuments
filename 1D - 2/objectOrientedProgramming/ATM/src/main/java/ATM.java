/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.Scanner;
/**
 *
 * @author HCARACH
 */
public class ATM {
    Scanner scn = new Scanner(System.in);
     private int id;
    private double balance;
    
    public ATM(){
        
    }
    
    public ATM(int id, double balance){
        this.id = id;
        this.balance = balance;
    }
    
    public void Menu(){
        System.out.print("\nMain Menu\n1: check balance\n2: withdraw\n3: deposit\n4: exit\nEnter a choice: ");
    }
    
    public void getMenu(int menu) {
        switch(menu) {
            case 1 : checkBalance(); break;
            case 2 : getWithdraw(); break;
            case 3 : getDeposit(); break;
        }
    }
    
    private void checkBalance() {
        System.out.printf("The balance is %.1f\n",this.balance);
    }
    
    private void getWithdraw(){
        System.out.print("Enter to amount to withdraw: ");
        double money = scn.nextDouble();
        
        withdraw(money);
    }
    
    private void withdraw(double withdraw){
        balance -= withdraw;
    }
    
    private void getDeposit(){
        System.out.print("Enter to amount to deposit: ");
        double money = scn.nextDouble();
        
        deposit(money);
    }
    
    private void deposit(double deposit){
        balance += deposit;
    }
}
