/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Hotel {
    private int FiveStar = 4999;
    private int FourStar = 2999;
    private int TriStar = 2499;

    public Hotel() {
    }
    
    public int selectHotel(int typeOfHotel) {
         switch(typeOfHotel) {
            case 1 :    return this.getFiveStar();
            case 2 :    return this.getFourStar(); 
            case 3 :    return this.getTriStar();
            default:  break;
        }
         return 0;
    }
    
    public void menuHotel() {
        System.out.println("Select your hotel  :\t(1) Five Star $ "+ this.FiveStar +
                "\t(2) Four Star $ " + this.FourStar + "\t(3) Three Star $ " + this.TriStar );
    }

    public int getFiveStar() {
        return FiveStar;
    }

    public void setFiveStar(int FiveStar) {
        this.FiveStar = FiveStar;
    }

    public int getFourStar() {
        return FourStar;
    }

    public void setFourStar(int FourStar) {
        this.FourStar = FourStar;
    }

    public int getTriStar() {
        return TriStar;
    }

    public void setTriStar(int TriStar) {
        this.TriStar = TriStar;
    }
    
    
}
