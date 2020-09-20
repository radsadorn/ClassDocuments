/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ScrollPane;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;

/**
 *
 * @author HCARACH
 */
public class User {

    ScrollPane scrollPane;
    VBox cenBox ;
    VBox leftBox ;
    HBox topBox;
    VBox vbox;
    HBox hbox;
    Account userAccount;
    Label label = new Label();
    
    public User() throws FileNotFoundException {
        
        this.userAccount = userAccount;
        vbox = new VBox(10);
        scrollPane = new ScrollPane();        
        scrollPane.pannableProperty().set(false);
        scrollPane.fitToWidthProperty().set(true);
        scrollPane.fitToHeightProperty().set(true);
        scrollPane.hbarPolicyProperty().setValue(ScrollPane.ScrollBarPolicy.NEVER);
        scrollPane.vbarPolicyProperty().setValue(ScrollPane.ScrollBarPolicy.AS_NEEDED);
        
        scrollPane.setPadding(new Insets(20, 20, 20, 20));
        scrollPane.setStyle("-fx-background-color: #e9967a");
        
        cenBox = new VBox(10);
        cenBox.getChildren().addAll(new Text("Login Complete!"));
        cenBox.setAlignment(Pos.CENTER);
        cenBox.setStyle("-fx-background-color: navajowhite;");
        
        leftBox = new VBox(10);
        leftBox.setAlignment(Pos.BOTTOM_LEFT);
        leftBox.setPadding(new Insets(50, 50, 50,50));
        leftBox.setStyle("-fx-background-color: salmon;");
        
        topBox = new HBox(10);
        topBox.setAlignment(Pos.TOP_RIGHT);
        topBox.setPadding(new Insets(20, 20, 20,50));
        topBox.setStyle("-fx-background-color: mistyrose;");
    
    }
    
    public void setScrollPane() throws FileNotFoundException {
        String imagePath = "images/1.jpg";
        ImageView imageView;
        
        VBox totalbox = new VBox(30);
        //totalbox.setPadding(new Insets(30, 30, 30, 30));
        
        for(int i = 0; i< 10; ++i) {
            hbox = new HBox(10);
            hbox.setPadding(new Insets(0, 30, 0, 30));
            
            for(int k  = 1 ; k < 4 ; ++k) {
                vbox = new VBox(30);
                vbox.setPadding(new Insets(20, 20, 20, 20));
                
                imageView = new ImageView(new Image(new FileInputStream("images/" + k +".jpg")));
                imageView.setFitHeight(160); 
                imageView.setFitWidth(120); 
                vbox.getChildren().addAll(imageView, new Text("Wahn Goey Dteun"), new Text("ARTIST : GUNGUN"));
                hbox.getChildren().addAll(vbox);
            }
            
            totalbox.getChildren().addAll(hbox);
        }
        
        vbox.setAlignment(Pos.CENTER);
        hbox.setAlignment(Pos.CENTER);
        totalbox.setAlignment(Pos.CENTER);
        scrollPane.setContent(totalbox);
    }

    public void setLeftBox(Button logoutbt) {
        this.leftBox.getChildren().addAll(logoutbt);
    }

    public void setTopBox(Button editbt) {
        this.topBox.getChildren().addAll(label, editbt);
    }

    public void setUserAccount(Account userAccount) {
        this.userAccount = userAccount;
        label.setText(this.userAccount.getFirstname());
    }

    public ScrollPane getScrollPane() {
        return scrollPane;
    }

    public VBox getCenBox() {
        return cenBox;
    }

    public VBox getLeftBox() {
        return leftBox;
    }

    public HBox getTopBox() {
        return topBox;
    }
}
