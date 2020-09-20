import java.util.ArrayList;
/**
 * An AssignmentList contains assignment items from the Assignment class and computes the final score.
 * 
 * @author Manvir
 * @version 09/10/17
 */  
public class AssignmentList {
    /**
     * The ArrayList of the type Assignment class.
     */
    private ArrayList<Assignment> itemList;

    /**
     * Constructor for AssignmentList. 
     * Takes in information on the assignment items
     */ 
    
    public AssignmentList()
    {
        itemList = new ArrayList<Assignment>();

    }

    /**
     * Add the assignment items from the Assignment class to the ArrayList
     * 
     * @param item has the assignment items from the Assignment class
     */
    public void addItem(Assignment item)
    {
        itemList.add(item);
    }

    /**
     * Compute the course grade from the assignment items in the list
     * 
     * If there are no assignments in the list, then the course grade is zero.
     * 
     * @return The course grade
     */
    public double computeCourseGrade() 
    {
        //TODO Add lines of code in here
        double totalWeight = 0;
        double score = 0;
        for (Assignment a: itemList) {
            score += (a.getTotalWeight()*a.getScore()/a.getTotalPoints());
            totalWeight += a.getTotalWeight();
        }
        return score/totalWeight;
    }

    /**
     * toString override. Gives all information about the AssignmentList.
     * 
     * @return All information about the assignment items
     */
    @Override
    public String toString()
    {
        String out = "";

        // Loop over all of the items in the list.
        for (Assignment a : itemList) {
            
        }
        for (int i = 0; i < itemList.size(); ++i)
        {
            out += itemList.get(i).toString() + "\n";
        }

        return out;
    }
  
}
