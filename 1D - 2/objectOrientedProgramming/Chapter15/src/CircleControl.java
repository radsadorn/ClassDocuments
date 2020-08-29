
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.StackPane;
import javafx.scene.shape.Circle;
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
public class CircleControl extends Application{
    
    CirclePane cp = new CirclePane();

    @Override
    public void start(Stage stage) throws Exception {
        
        BorderPane bPane = new BorderPane();
        HBox hbox = new HBox(20);
        hbox.setAlignment(Pos.CENTER);
        
        Button enBtn = new Button("Enlarge");
        Button skBtn = new Button("Shrink");
        
        hbox.getChildren().addAll(enBtn,skBtn);
        
        bPane.setBottom(hbox);
        bPane.setCenter(cp);
        
        enHandlerClass h1 = new enHandlerClass();
        enBtn.setOnAction(h1);
        skHandlerClass h2 = new skHandlerClass();
        skBtn.setOnAction(h2);
        
        Scene scene = new Scene(bPane, 400, 300);
        stage.setScene(scene);
        stage.show();
    }
    
    public static void main(String[] args) {
        launch(args);
    }

    private class enHandlerClass implements EventHandler<ActionEvent>{

        public enHandlerClass() {
        }

        @Override
        public void handle(ActionEvent t) {
            cp.enlarge();
        }
    }

    private class skHandlerClass implements EventHandler<ActionEvent>{

        public skHandlerClass() {
        }

        @Override
        public void handle(ActionEvent t) {
            cp.shrink();
        }
    }
    
}

class CirclePane extends StackPane {
    
    Circle circle = new Circle(10);
    
    public CirclePane() {
        getChildren().add(circle);
    }

    void enlarge() {
        circle.setRadius(circle.getRadius() + 2);
        System.out.println(circle.getRadius());
    }

    void shrink() {
        circle.setRadius(circle.getRadius() - 2);
        System.out.println(circle.getRadius());
    }
}
