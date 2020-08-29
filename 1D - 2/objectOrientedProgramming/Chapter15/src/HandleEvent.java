

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HCARACH
 */
public class HandleEvent extends Application {

    @Override
    public void start(Stage stage) throws Exception {
        HBox hbox = new HBox(10);
        hbox.setAlignment(Pos.CENTER);
        
        Button okbt = new Button("Enlarge");
        Button ccbt = new Button("Shrink");
        hbox.getChildren().addAll(okbt, ccbt);
        
        OkHandlerClass h1 = new OkHandlerClass();
        okbt.setOnAction(h1);
        
        CancleHandlerClass h2 = new CancleHandlerClass();
        ccbt.setOnAction(h2);
        
        Scene scene  = new Scene(hbox, 400, 200);
        stage.setScene(scene);
        stage.show();
    }
    
    public static void main(String[] args) {
        launch(args);
    }

    private class CancleHandlerClass implements EventHandler<ActionEvent>{

        public CancleHandlerClass() {
        }

        @Override
        public void handle(ActionEvent t) {
            System.out.println("Cancle buttin click!");
        }
    }

    private class OkHandlerClass implements EventHandler<ActionEvent>{

        public OkHandlerClass() {
        }

        @Override
        public void handle(ActionEvent t) {
            System.out.println("OK button click!");
        }
    }
    
}
