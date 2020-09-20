/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Tax {
    int  filingStatus;
//    public static const SINGLE_FILER (0),
//    MARRIED_JOINTLY_OR_QUALIFYING_WIDOW(ER) (1),
//    MARRIED_SEPARATELY (2),
//    HEAD_OF_HOUSEHOLD (3);
    int[][] brackets;
    double[] rates;
    double taxableIncome;
    
    public Tax()
    {
        
    }
    
    public Tax(int filingStatus, int[][] brackets, double[] rates, double taxableIncome)
    {
        this.setFilingStatus(filingStatus);
        this.setBrackets(brackets);
        this.setRates(rates);
        this.setTaxableIncome(taxableIncome);
    }
    
    public double getTax()
    {
        return this.taxableIncome;
    }

    public int getFilingStatus() {
        return filingStatus;
    }

    public void setFilingStatus(int filingStatus) {
        this.filingStatus = filingStatus;
    }

    public int[][] getBrackets() {
        return brackets;
    }

    public void setBrackets(int[][] brackets) {
        this.brackets = brackets;
    }

    public double[] getRates() {
        return rates;
    }

    public void setRates(double[] rates) {
        this.rates = rates;
    }

    public double getTaxableIncome() {
        return taxableIncome;
    }

    public void setTaxableIncome(double taxableIncome) {
        this.taxableIncome = taxableIncome;
    }
    
    
}
