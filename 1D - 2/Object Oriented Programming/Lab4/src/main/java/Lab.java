/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class Lab extends Assignment {
    private String specification;

    public Lab(String specification, String name, int month, int day, int hour, int minute) {
        super(name, month, day, hour, minute);
        this.specification = specification;
    }

    @Override
    public String toString() {
        return super.toString()+"; specification = "+specification;
    }
}
