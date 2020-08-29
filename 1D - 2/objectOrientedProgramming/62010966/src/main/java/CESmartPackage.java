/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class CESmartPackage {
    int TotalPrice = 0;
    int input;
        
        AirTicket ticket = new AirTicket();
        Hotel hotel = new Hotel();
        Meal meal = new Meal();
        SightseeingTour tour = new SightseeingTour();

    public CESmartPackage() {
    }
        
    public void menu() {      
        System.out.println("\nWelcome to CE Smart Package!!");
        System.out.println("---------------------------------------------------------------------------------");
        ticket.menuTicket();
        hotel.menuHotel();
        meal.menuMeal();
        tour.menuTour();
        System.out.println("---------------------------------------------------------------------------------");
    }
    
    public void select(int round, int select) {
        int price = 0;
        switch(round) {
            case 0 : price = ticket.selectTicket(select); break;
            case 1 : price = hotel.selectHotel(select); break;
            case 2 : price = meal.selectMeal(select); break;
            //case 4 : price = 
        }
        this.TotalPrice += price;
    }
    
    public void stringShow(int round) {
        switch(round) {
            case 0: System.out.print("Select your Ticket\t: "); break;
            case 1: System.out.print("Select your Hotel\t: "); break;
            case 2: System.out.print("Select your Meal\t: "); break;
            case 3: System.out.print("Select your Tour\t: "); break;
            default: break;
        }
    }

    @Override
    public String toString() {
        return "Your Package is " + TotalPrice + " Baht";
    }
        
}
