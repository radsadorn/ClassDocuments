package edu.parinya.softarchdesign.structural;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

public class HealthcareWorkerTeam implements HealthcareServiceable {
    private Set<HealthcareServiceable> members = new LinkedHashSet<>();

    public void addMember(HealthcareServiceable member) {
        this.members.add(member);
    }

    public void removeMember(HealthcareServiceable member) {
        this.members.remove(member);
    }

    @Override
    public void service() {
        for(HealthcareServiceable member: this.members)
            member.service();
    }

    @Override
    public double getPrice() {
        double price = 0;
        for(HealthcareServiceable member: this.members)
            price += member.getPrice();
        return price;
    }
}
