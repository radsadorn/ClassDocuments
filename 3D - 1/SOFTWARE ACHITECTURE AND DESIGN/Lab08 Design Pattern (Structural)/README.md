# Instructions
In this assignment, the tasks require you to implement a few Java source files based on two Structural Design Patterns. To complete the tasks in this assignment, the use of IDE is strongly recommend, Eclipse IDE or IntelliJ IDEA for instance. To begin the assignment, please download "SoftArchDesign.zip" file provided. You should be able to import it to your IDE as a Java project.

The structure of the zip file can be described as follows:
- src/edu/parinya/softarchdesign/structural 

    This directory contains Java source files for this assignment as follows:
    - HealthcareWorker.svg - a class diagram that you need to follow.
    - Main.java - A class with a main method to illustrate the expected usages of a program. Usually, you do not want to modify this file.
    - ExampleOutput.txt - an example output from running Main.java in a complete implementation.
    - HealthcareServiceable.java - an interface that defines essential methods for HealthcareWorker class. YOU SHOULD NOT NEED TO MODIFY THIS FILE.
    - HealthcareWorker.java - an abstract base class for many healthcare professionals. YOU SHOULD NOT NEED TO MODIFY THIS FILE.
    - Anesthesiologist.java - one for many subclasses of HealthcareWorker. YOU SHOULD NOT NEED TO MODIFY THIS FILE.
    - Cardiologist.java - one for many subclasses of HealthcareWorker. YOU SHOULD NOT NEED TO MODIFY THIS FILE.
    - Nurse.java - one for many subclasses of HealthcareWorker. YOU SHOULD NOT NEED TO MODIFY THIS FILE.
    - Surgeon.java - one for many subclasses of HealthcareWorker. YOU SHOULD NOT NEED TO MODIFY THIS FILE.

Your tasks for this assignment require you to implement the following files:
- src/edu/parinya/softarchdesign/structural 
    - HealthcareWorkerTeam.java - a container class for the Composite Pattern.
    - HealthcareWorkerDecorator.java - an abstract based class for the Decorator Pattern.
    - TimeLoggingHealthcareWorker.java - a decorator class that lets a HealthcareWorker instance print timestamp before its service.
    - TaxPayingHealthcareWorker.java - a decorator class that adds 10% tax to the normal price of a HealthcareWork instance.
### Your tasks
1. The first task involves Composite Pattern. Please look at HealthcareWorker.svg and create HealthcareWorkerTeam.java accordingly. You may look at Main.java to see the expected usages.
2. The second tasks involves Decorator Pattern. Please look at HealthcareWorker.svg and create HealthcareWorkerDecorator.java, TimeLoggingHealthcareWorker.java and TaxPayingHealthcareWorker.java accordingly.
