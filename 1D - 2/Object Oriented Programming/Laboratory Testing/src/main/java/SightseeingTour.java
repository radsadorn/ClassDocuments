/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class SightseeingTour {
    private int Museum = 1000;
    private int Fuji = 2000;

    public SightseeingTour() {
    }
    
    public void menuTour() {
        System.out.println("Select your tour   :\t(1) Museum $ "+ this.Museum +
                "\t(2) Fuji $ " + this.Fuji + "\t\t(3) Not "  );
    }
    
    public int selectMeal(int typeOfTicket) {
        switch(typeOfTicket) {
            case 1 :    return this.getMuseum(); 
            case 2 :    return this.getFuji();
            default:  break;
        }
        return 0;
    }

    public int getMuseum() {
        return Museum;
    }

    public void setMuseum(int Museum) {
        this.Museum = Museum;
    }

    public int getFuji() {
        return Fuji;
    }

    public void setFuji(int Fuji) {
        this.Fuji = Fuji;
    }
    
    
}
