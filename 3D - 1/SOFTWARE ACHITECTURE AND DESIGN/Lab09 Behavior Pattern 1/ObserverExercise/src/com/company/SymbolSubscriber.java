package com.company;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.concurrent.Flow;

public class SymbolSubscriber extends StringSubscriber {

    private String workingDir;

    SymbolSubscriber() {
        this.workingDir = "src\\com\\company\\resources\\Symbol.txt";
    }

    @Override
    public void onSubscribe(Flow.Subscription subscription) {}

    @Override
    public void onNext(Object item) {
        try {
            FileWriter fileWriter = new FileWriter(workingDir, true);
            PrintWriter printWriter = new PrintWriter(fileWriter);
            printWriter.printf(item + "\n");
            printWriter.close();
            System.out.println("\t\tIt was received by Symbol Subscriber.");
        } catch (IOException ex) {
            this.onError(ex);
        }
    }

    @Override
    public boolean checkContains(String item) {
        return !item.matches("[a-zA-Z0-9.]*");
    }
}
