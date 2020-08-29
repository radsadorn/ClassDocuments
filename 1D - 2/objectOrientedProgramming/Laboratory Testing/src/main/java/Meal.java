/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Meal {
    private int StreetFood = 300;
    private int HotelMeal = 500;
    private int Restaurant = 1000;

    public Meal() {
    }
    
    public void menuMeal() {
        System.out.println("Select your meal   :\t(1) Street Food $ "+ this.StreetFood +
                "\t(2) HotelMeal $ " + this.HotelMeal + "\t(3) Restaurant $ " + this.Restaurant );
    }
    
    public int selectMeal(int typeOfTicket) {
        switch(typeOfTicket) {
            case 1 :    return this.getStreetFood(); 
            case 2 :    return this.getHotelMeal();
            case 3 :    return this.getRestaurant();
            default:  break;
        }
        return 0;
    }

    public int getStreetFood() {
        return StreetFood;
    }

    public void setStreetFood(int StreetFood) {
        this.StreetFood = StreetFood;
    }

    public int getHotelMeal() {
        return HotelMeal;
    }

    public void setHotelMeal(int HotelMeal) {
        this.HotelMeal = HotelMeal;
    }

    public int getRestaurant() {
        return Restaurant;
    }

    public void setRestaurant(int Restaurant) {
        this.Restaurant = Restaurant;
    }
    
}
