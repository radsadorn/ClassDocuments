/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class AirTicket {
    private int FirstClass = 9999;
    private int Businees = 4999;
    private int Economy = 2999;
    
    public AirTicket(){
        
    }
    
    public void menuTicket() {
        System.out.println("Select your ticket :\t(1) First Class $ "+ this.FirstClass +
                "\t(2) Business $ " + this.Businees + "\t(3) Economy $ " + this.Economy );
    }
    
    public int selectTicket(int typeOfTicket) {
        switch(typeOfTicket) {
            case 1 :    return this.getFirstClass();
            case 2 :    return this.getBusinees();
            case 3 :    return this.getEconomy();
            default:  break;
        }

        return 0;
    }
    
    public int getFirstClass() {
        return FirstClass;
    }

    public void setFirstClass(int FirstClass) {
        this.FirstClass = FirstClass;
    }

    public int getBusinees() {
        return Businees;
    }

    public void setBusinees(int Businees) {
        this.Businees = Businees;
    }

    public int getEconomy() {
        return Economy;
    }

    public void setEconomy(int Economy) {
        this.Economy = Economy;
    }
    
    
}
