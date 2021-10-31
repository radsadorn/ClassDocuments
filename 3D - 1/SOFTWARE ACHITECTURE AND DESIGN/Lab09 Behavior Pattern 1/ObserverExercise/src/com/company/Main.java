package com.company;

public class Main {

    public static void main(String[] args) {
	// write your code here
        StringPublisher publisher = new StringPublisher();

        StringSubscriber alphabetSubscriber = new AlphabetSubscriber();
        StringSubscriber numberSubscriber = new NumberSubscriber();
        StringSubscriber symbolSubscriber = new SymbolSubscriber();

        publisher.subscribe(alphabetSubscriber);
        publisher.subscribe(numberSubscriber);
        publisher.subscribe(symbolSubscriber);

        String stringList[] = { "KMITL", "31-10-2564", "2021", "COVID-19", "SAD", "(^-^)", "Hello World!", "Behavior Patterns", "1234567890"};
        for (String s : stringList) {
            publisher.publish(s);
        }

//        System.out.println();

    }
}
