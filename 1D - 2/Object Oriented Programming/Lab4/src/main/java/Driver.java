
/**
 * Driver class constructs the individual objects for the Lab and Project class
 * 
 * @author Manvir
 * @version 09/10/17
 */
public class Driver {


    /**
     * Simple test
     * 
     * @param args Not used
     */
    public static void main(String[] args)
    {
        AssignmentList list = new AssignmentList();
        // TODO Add lines of code in here   
        Assignment a = new Assignment("Unit Testing",12,01,23,00);
        a.setScore(0.78);
        a.setTotalPoints(0.99);
        a.setTotalWeight(0.30);
        list.addItem(a);
        //System.out.println(a.toString()+"\n");
        
        Lab l = new Lab("UnitTesting.pdf","Unit Testing",12,01,23,00);
        l.setScore(0.78);
        l.setTotalPoints(0.99);
        l.setTotalWeight(0.30);
        list.addItem(l);
        //System.out.println(l.toString()+"\n");
        
        Project p = new Project("UnitTesting.pdf","Snack.csv","Unit Testing",12,01,23,00);
        p.setScore(0.78);
        p.setTotalPoints(0.99);
        p.setTotalWeight(0.30);
        list.addItem(p);
        //System.out.println(p.toString()+"\n");
        
        System.out.println(list.toString());
        
        System.out.println(list.computeCourseGrade());
    } 
}
