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
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
import javafx.css.Rule;
import javafx.event.ActionEvent;
import javafx.geometry.HPos;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.RadioButton;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.TextField;
import javafx.scene.control.ToggleGroup;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class Project extends Application {

    public Scene login, home, register, failed, editProfile, forgetPassword;
    public Stage stage;
    
    File file = new File("Account.dat");
    
    VBox failBox = new VBox(10);
    
    BorderPane loginPane = new BorderPane(); 
    BorderPane regPane = new BorderPane();
    BorderPane homePane = new BorderPane();
    
    User user;
    
    Account userAccount;
    ArrayList<Account> listAccount = new ArrayList<>();

    public static void main(String[] args) throws IOException, FileNotFoundException, ClassNotFoundException {
        launch(args);
        
//        File f = new File("Account.dat");
//        ArrayList<Account> ac = new ArrayList<>();
//        Account a1 = new Account("Yuji", "Nishida", "62010966@kmitl.ac.th", 
//                "nichida","12345678","male");
//        ac.add(a1);
//        ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(f));
//
//        out.writeObject(ac);
//
//        System.out.println("Finish");
//
//        ObjectInputStream in = new ObjectInputStream(new FileInputStream(f));
//        ArrayList<Account> acin = (ArrayList<Account>) in.readObject();
//        System.out.println(acin.get(0).getUsername());
    }

    @Override
    public void start(Stage stage) throws Exception {
        
         user = new User();
        
        this.stage = stage;
        this.stage.setResizable(false);
        stage.setTitle("E-MUSIC");

        //Layout Login
        this.Login();
        this.Register();
        this.User();
        this.Failed();
        
        login = new Scene(loginPane, 800, 600);
        failed = new Scene(failBox, 800, 600);
        register = new Scene(regPane, 800, 600);
        home = new Scene(homePane, 800, 600);

        this.stage.setScene(login);
        this.stage.show();
    }
    
    public void Login() throws IOException, FileNotFoundException, ClassNotFoundException{
        
        // **************************************** read file
        try {
            listAccount = readFile(file);
        } catch (Exception e) {
            System.out.println("Login " + e);
        }
                
        // **************************************** Set Pane
        TextField username = new TextField();
        username.setAlignment(Pos.CENTER_LEFT);
        username.setMaxWidth(400);

        TextField password = new PasswordField();
        password.setAlignment(Pos.CENTER_LEFT);
        password.setMaxWidth(400);
        
        CheckBox chkBox = new CheckBox("Remember this");
        
        // **************************************** Button
        Button LIBtn = new Button("Login");
        Button close = new Button("Close");
        
        LIBtn.setOnAction((ActionEvent t) -> {
          
            for (Account account : listAccount) {
                System.out.println("");
                String thisUser =  (String)username.getText(),thisPass = (String)password.getText();
                String chkUser = account.getUsername(),chkPass = account.getPassword();
                String chkEmail = account.getEmail();
                
                userAccount = account;
                if( ( thisUser.equals(chkUser) || thisUser.equals(chkEmail)) && thisPass.equals(chkPass) ){
                    System.out.println(true);
                    stage.setScene(home);
                    
                    user.setUserAccount(userAccount);
                    homePane.setTop(user.getTopBox());
                    
                    break;
                } else {
                    System.out.println("Login Failed");
                    stage.setScene(failed);
                }
            }
            
            username.clear();
            password.clear();
            System.out.println("Login Press.");
        });
        
        close.setOnAction((ActionEvent t) -> {
            System.out.println("");
            stage.close();
            System.out.println("Window close");
        });
        
        Button forgetbt = new Button("Forgot password?");
        
        Button RGBtn = new Button("Create a new account");
        RGBtn.setOnAction((ActionEvent t) -> {
            System.out.println("");
            stage.setScene(register);
            System.out.println("Register Press.");
        });
        // **************************************** Button end
        
        VBox loginBox = new VBox(10);
        loginBox.setAlignment(Pos.CENTER_LEFT);
        loginBox.getChildren().addAll(new Text("Username : "), username, new Text("Password : "), password,
                chkBox, LIBtn, forgetbt,  RGBtn, close);
        loginBox.setPadding(new Insets(15, 50, 15, 50));
        loginBox.setStyle("-fx-background-color: #f5deb3");
        
        VBox helloBox = new VBox(10);
        Text hello = new Text("WELCOME TO E-MUSIC");
        hello.setStyle("-fx-font-size:72px;");
        hello.setStyle("-fx-font-weight: bold");
        helloBox.getChildren().add(hello);
        helloBox.setAlignment(Pos.CENTER);
        helloBox.setStyle("-fx-background-color: #fff5ee");
        
        loginPane.setCenter(helloBox);
        loginPane.setRight(loginBox);

    }
    
    public void Failed() {
        
        Button homeBt = new Button("HOME");
        
        homeBt.setOnAction((ActionEvent t) -> {
            
            stage.setScene(login);
            System.out.println("Home Press.");
        });
        
        failBox.getChildren().addAll(new Text("Login Failed!"), homeBt);
        failBox.setAlignment(Pos.CENTER);
        
    }
    
    public void Register(){    
        
        TextField firstname = new TextField();
        firstname.setPromptText("First Name");
        firstname.setMaxWidth(300);
        
            HBox row = new HBox(10);
            row.getChildren().addAll(new Text("First Name : \t\t\t\t"), new Text("Last Name : \t"));
        
        TextField lastname = new TextField();
        lastname.setPromptText("Last Name");
        lastname.setMaxWidth(300);
        
            HBox row2 = new HBox(20);
            row2.getChildren().addAll(firstname , lastname);
        
        TextField email = new TextField();
        email.setPromptText("Email e.g. Spookify@gmail.com");
        email.setMaxWidth(300);
        
            VBox row3 = new VBox(10);
            row3.getChildren().addAll(new Text("Email : \t\t"), email);
        
        TextField username = new TextField();
        username.setPromptText("Usrname");
        username.setMaxWidth(300);
        
            HBox row4 = new HBox(10);
            row4.getChildren().addAll(new Text("Username : \t"), username);
        
        TextField password = new PasswordField();
        password.setPromptText("Password");
        password.setMaxWidth(300);
        
            HBox row5 = new HBox(10);
            row5.getChildren().addAll(new Text("Password : \t"), password);
        
        TextField passwordConfirm = new PasswordField();
        passwordConfirm.setPromptText("Confirm Password");
        passwordConfirm.setMaxWidth(300);
        
            HBox row6 = new HBox(10);
            row6.getChildren().addAll(new Text("Confirm password :"), passwordConfirm);
            
        DatePicker date = new DatePicker();
        date.setShowWeekNumbers(false);
        date.setPromptText("DD / MM / YYYY");
        date.setOnAction(e -> {
            LocalDate dOB = date.getValue();
        });
        
            HBox row7 = new HBox(10);
            row7.getChildren().addAll(new Text("Birth Date : "), date);
            
        TextField gender = new TextField();
        gender.setMaxWidth(300);
        
        ChoiceBox<String> questionBox = new ChoiceBox<>();
        questionBox.getItems().addAll("What is your name's first pet?", "Where is yout town?");        
        TextField question = new TextField();
        question.setMaxWidth(300);
        
            HBox row8 = new HBox(20);
            row8.getChildren().addAll(new Text("Choose your question."), questionBox);
        
        Button SMBtn = new Button("Submit");
        Button exitbt = new Button("Exit");
        SMBtn.setOnAction((ActionEvent t) -> {
            
            ArrayList<Account> addAccount = new ArrayList<>();
            
            System.out.println("");
            
            if(password.getText().equals(passwordConfirm.getText())) {
                
                try {
                    addAccount = readFile(file);
                } catch (IOException | ClassNotFoundException ex) {
                    System.out.println("Register readFile " + ex);
                } 
                
                addAccount.add(new Account(firstname.getText(), lastname.getText(), email.getText()
                        ,username.getText(), password.getText(), gender.getText()));
                
                try {
                    writeFile(file, addAccount);
                } catch (IOException ex) {
                    System.out.println("Register writeFile " + ex);
                }
                
                try {
                    listAccount = readFile(file);
                } catch (Exception e) {
                    System.out.println("Login " + e);
                }
                
                System.out.println("Register Success");
                
                stage.setScene(login);
            } else {
                stage.setScene(register);
                System.out.println("Register Failed!");
            } 
            
            username.clear();
            password.clear();
            passwordConfirm.clear();
            question.clear();
            System.out.println("Submit Press.");
        });
        exitbt.setOnAction((ActionEvent t) -> {
            System.out.println("");
            stage.setScene(login);
            System.out.println("Exit Press.");
        });
        
        ToggleGroup sexToggle = new ToggleGroup();
        RadioButton male = new RadioButton("Male");
        RadioButton female = new RadioButton("Female");
        male.setToggleGroup(sexToggle);
        female.setToggleGroup(sexToggle);
        
            HBox row9 = new HBox(20);
            row9.getChildren().addAll(new Label("Gender : "), male, female);
        
        VBox regBox = new VBox(10);
        
            HBox row0 = new HBox(10);
            row0.getChildren().add(new Text(" "));
            HBox row1 = new HBox(10);
            row1.getChildren().add(new Text(" "));
        
        regBox.getChildren().addAll(row, row2, row0, row3, row1, row4, row5, row6, row7,
                row9, row8, question);

        regBox.setAlignment(Pos.CENTER_LEFT);
        
        regBox.setPadding(new Insets(20, 50, 50, 50));
        regBox.setStyle("-fx-background-color: #f5deb3");
        
        VBox left = new VBox(10);
        left.getChildren().addAll(new Text("REGISTER!!"), exitbt);
        left.setPadding(new Insets(10,100, 10, 100));;
        left.setAlignment(Pos.BOTTOM_CENTER);
        left.setStyle("-fx-background-color: #fff5ee");
        
        HBox bottom = new HBox();
        bottom.getChildren().addAll(SMBtn);
        bottom.setAlignment(Pos.CENTER_RIGHT);
        bottom.setPadding(new Insets(20, 20, 20, 20));
        bottom.setStyle("-fx-background-color: #fff5ee");
        
        regPane.setLeft(left);
        regPane.setCenter(regBox);     
        regPane.setBottom(bottom);
    }
    
    public void User() throws FileNotFoundException {
        
        Button logoutbt = new Button("Logout");
        Button editbt = new Button("Edit Profile");
        
        logoutbt.setOnAction((ActionEvent t) -> {
            System.out.println("");
            stage.setScene(login);
            System.out.println("Logout Press.");
        });
        
        editbt.setOnAction((ActionEvent t) -> {
            System.out.println("");
            this.EditProfile();
            stage.setScene(editProfile);
            System.out.println("Exit Press.");
        });
        
        user.setTopBox(editbt);
        user.setLeftBox(logoutbt);
        user.setScrollPane();
        
        homePane.setLeft(user.getLeftBox());
        homePane.setCenter(user.getScrollPane());
    }
    
    void EditProfile() {
        
        EditProfile editprofile = new EditProfile(userAccount, stage);
        Button exitbt = new Button("Exit");
        Button savebt = new Button("Save");
        
        exitbt.setOnAction((ActionEvent t) -> {
            System.out.println("");
            stage.setScene(home);
            System.out.println("Logout Press.");
        });
        
        savebt.setOnAction((ActionEvent t) -> {
            
        });
        
        editprofile.setLeftBox(exitbt);
        editprofile.setBottomBox(savebt);
        //editprofile.setUserAccount(userAccount);
        editprofile.setEditBox();
        
        editProfile = new Scene(editprofile.getEditPane(), 800, 600);
        
    }
    
    void ForgetPassword() {
        
        
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
}
