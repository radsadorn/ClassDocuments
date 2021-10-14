package edu.parinya.softarchdesign.structural;

public class TaxPayingHealthcareWorker extends HealthcareWorkerDecorator{
    TaxPayingHealthcareWorker(HealthcareServiceable worker) {
        super(worker);
        System.out.println(" with TaxPaying");
    }

    public double getPrice() {
        return super.getPrice() * 1.10;
    }
}
