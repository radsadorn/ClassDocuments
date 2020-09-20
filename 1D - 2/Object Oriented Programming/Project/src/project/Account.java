/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

import java.io.Serializable;

/**
 *
 * @author HCARACH
 */
public class Account implements Serializable {

    String firstname;
    String lastname;
    String email;
    String username;
    String password;
    String gender;
    String question;
    String answer;
    
    public Account() {
    }

    public Account(String firstname, String lastname, String email
            , String username, String password, String gender) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.username = username;
        this.password = password;
        this.gender = gender;
    }

    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public String getEmail() {
        return email;
    }

    public String getGender() {
        return gender;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getQuestion() {
        return question;
    }

    public String getAnswer() {
        return answer;
    }

    @Override
    public String toString() {
        return "Account{" + "username=" + username + ", password=" + password + ", answer=" + answer + '}';
    }
    
    
    
    
}
