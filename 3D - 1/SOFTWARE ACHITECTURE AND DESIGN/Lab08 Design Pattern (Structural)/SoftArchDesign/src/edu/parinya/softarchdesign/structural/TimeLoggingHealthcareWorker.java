package edu.parinya.softarchdesign.structural;

import java.util.Date;

public class TimeLoggingHealthcareWorker extends HealthcareWorkerDecorator {

    TimeLoggingHealthcareWorker(HealthcareServiceable worker) {
        super(worker);
        System.out.println(" with TimeLogging");
    }

    public void service() {
        Date timestamp = new Date();
        System.out.print(timestamp.toString() + ": ");
        super.service();
    }
}
