/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logindatabase;

import javafx.application.Application;
import javafx.geometry.HPos;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;

/**
 *
 * @author HCARACH
 */
public class LoginDatabase extends Application{

    @Override
    public void start(Stage stage) throws Exception {
        GridPane gPane = new GridPane();
        gPane.setAlignment(Pos.CENTER);
        gPane.setHgap(20);
        gPane.setVgap(10);
        
        gPane.add(new Label("Username : "), 0, 0);
        gPane.add(new TextField(), 1, 0);
        gPane.add(new Label("Password : "), 0, 1);
        gPane.add(new TextField(), 1, 1);
        
        Button btAdd = new Button("Add name");
        gPane.setHalignment(btAdd, HPos.RIGHT);
        Scene scene = new Scene(gPane);
        stage.setScene(scene);
        stage.show();
    }
    
    public static void main(String[] args) {
        launch(args);
    }

}
