/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.time.LocalDate;
import java.util.ArrayList;
import javafx.event.ActionEvent;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.RadioButton;
import javafx.scene.control.TextField;
import javafx.scene.control.ToggleGroup;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.stage.Stage;

/**
 *
 * @author HCARACH
 */
public class EditProfile {
    
    Scene change;
    
    BorderPane editPane = new BorderPane();
    BorderPane changePane = new BorderPane();
    
    File file = new File("Account.dat");
    
    Account userAccount;
    ArrayList<Account> listAccount = new ArrayList<>();
    
    LocalDate dOB ;
    
    VBox editBox = new VBox(10);
    VBox changeBox = new VBox(10);
    VBox leftBox = new VBox(10);
    HBox bottomBox = new HBox();
    
    //TextFiled
    TextField username = new TextField();
    TextField firstname = new TextField();
    TextField lastname = new TextField();
    TextField email = new TextField();
    TextField currentPassword = new TextField();
    TextField password = new PasswordField();
    TextField passwordConfirm = new PasswordField();

    public EditProfile(Account userAccount, Stage stage) {
        
        username.setPromptText("Usrname");
        username.setText(userAccount.getUsername());
        username.setMaxWidth(300);
        
            VBox row = new VBox(10);
            row.getChildren().addAll(new Text("Username : \t"), username);
            
        firstname.setPromptText("First Name");
        firstname.setText(userAccount.getFirstname());
        firstname.setMaxWidth(300);
        
            HBox row2 = new HBox(10);
            row2.getChildren().addAll(new Text("First Name : \t\t\t    "), new Text("Last Name : \t"));
        
        lastname.setPromptText("Last Name");
        lastname.setText(userAccount.getLastname());
        lastname.setMaxWidth(300);
        
            HBox row3 = new HBox(5);
            row3.getChildren().addAll(firstname , lastname);
        
        email.setPromptText("Email e.g. Spookify@gmail.com");
        email.setText(userAccount.getEmail());
        email.setMaxWidth(300);
        
            VBox row5 = new VBox(10);
            row5.getChildren().addAll(new Text("Email : \t\t"), email);
            
        // create a date picker 
        DatePicker date = new DatePicker();
        // show week numbers 
        date.setShowWeekNumbers(false);
        // when datePicker is pressed 
        //LocalDate dOB = userAccount.getDateOfBirth();
        date.setOnAction(e -> {
            dOB = date.getValue();
        });

        //Select Gender
        Label sexText = new Label("Gender");
        ToggleGroup sexToggle = new ToggleGroup(); //create radio button group
        RadioButton male = new RadioButton("Male"); //create radio button
        RadioButton female = new RadioButton("Female");
        RadioButton otherRadio = new RadioButton("Not specify");
        male.setToggleGroup(sexToggle); //Set radio button group
        female.setToggleGroup(sexToggle);
        otherRadio.setToggleGroup(sexToggle);
        sexToggle.selectToggle(male); // Set default = male

        currentPassword.setMaxWidth(300);
        
            VBox row7 = new VBox(10);
            row7.getChildren().addAll(new Text("Current Password : \t"), currentPassword);
        
            //Blank line
            HBox row1 = new HBox(10);
            row1.getChildren().add(new Text(" "));
            HBox row4 = new HBox(10);
            row4.getChildren().add(new Text(" "));
            HBox row6 = new HBox(10);
            row6.getChildren().add(new Text(" "));
            HBox row8 = new HBox(10);
            row8.getChildren().add(new Text(" "));
            HBox row10 = new HBox(10);
            row10.getChildren().add(new Text(" "));
            
        password.setMaxWidth(300);
        
            HBox row9 = new HBox(10);
            row9.getChildren().addAll(new Text("New Password : \t"), password);
        
        passwordConfirm.setMaxWidth(300);
        
            HBox row11 = new HBox(10);
            row11.getChildren().addAll(new Text("Confirm New Password :"), passwordConfirm);
            
            Label changePassword = new Label("Change Password?");
            changePassword.setStyle("-fx-underline: true");
            
            changePassword.setOnMouseClicked(event -> {
                    editBox.getChildren().remove(9);
                    editBox.getChildren().addAll(row9, row10, row11);
            });
            
        
        editBox.getChildren().addAll(row, row1, row2, row3, row4, row5, row6, row7, row8, changePassword);        
        editBox.setPadding(new Insets(50, 50, 50, 50));
        editBox.setStyle("-fx-background-color: #f5deb3");
        
    }
    
        private ArrayList<Account> readFile(File file) throws FileNotFoundException, IOException, ClassNotFoundException {
        ObjectInputStream in = new ObjectInputStream(new FileInputStream(file));
        return (ArrayList<Account>) in.readObject();
    } 

    private void writeFile(File file, ArrayList<Account> listAccount) throws FileNotFoundException, IOException {
        ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(file));
        out.writeObject(listAccount);   
        out.close();
    }

    public BorderPane getEditPane() {
        return editPane;
    }

    public void setEditBox() {
        editPane.setLeft(leftBox);
        editPane.setCenter(editBox);     
        editPane.setBottom(bottomBox);
    }

    public void setLeftBox(Button backbt) {
        leftBox.getChildren().addAll(new Text("EDIT PROFILE"), backbt);
        leftBox.setPadding(new Insets(10,100, 10, 100));;
        leftBox.setAlignment(Pos.BOTTOM_CENTER);
        leftBox.setStyle("-fx-background-color: #fff5ee");
    }

    public void setBottomBox(Button savebt) {
        bottomBox.getChildren().addAll(savebt);
        bottomBox.setAlignment(Pos.CENTER_RIGHT);
        bottomBox.setPadding(new Insets(20, 20, 20, 20));
        bottomBox.setStyle("-fx-background-color: #fff5ee");
    }

    public VBox getEditBox() {
        return editBox;
    }

    public void setUserAccount(Account userAccount) {
        this.userAccount = userAccount;
    }
    
}
