
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Button;
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
public class MyJavaFX extends Application {
    
   @Override
    public void start(Stage stage) throws Exception {
        Scene scene = new Scene(new Button("OK"), 250, 200);
        stage.setTitle("MyJavaFX");
        stage.setScene(scene);
        stage.show();
        
        Stage stage2 = new Stage();
        stage2.setTitle("Second Stage");
        Scene scene2 = new Scene (new Button("QUIT"), 250, 200);
        stage2.setScene(scene2);
        stage2.show();
        
    }
    
    public static void main(String[] args) {
        launch(args);
    }
}
