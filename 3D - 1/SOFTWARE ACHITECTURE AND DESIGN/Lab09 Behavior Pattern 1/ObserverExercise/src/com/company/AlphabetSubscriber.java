package com.company;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.concurrent.Flow;

public class AlphabetSubscriber extends StringSubscriber {

    private String workingDir;

    AlphabetSubscriber() {
        this.workingDir = "src\\com\\company\\resources\\Alphabet.txt";
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
            System.out.println("\t\tIt was received by Alphabet Subscriber.");
        } catch (IOException ex) {
            this.onError(ex);
        }
    }

    @Override
    public boolean checkContains(String item) {
        return item.matches(".*[a-zA-Z].*");
    }
}
