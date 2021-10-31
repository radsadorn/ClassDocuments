package com.company;

import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Flow;

public class StringPublisher implements Flow.Publisher {

    private Set<Flow.Subscriber> subscribers;

    StringPublisher() {
        subscribers = new LinkedHashSet<>();
    }

    @Override
    public void subscribe(Flow.Subscriber subscriber) {
        subscribers.add(subscriber);
    }

    public void publish(String item) {
        for (Flow.Subscriber subscriber: subscribers)
            if (((StringSubscriber) subscriber).checkContains(item))
                subscriber.onNext(item);

    }
}
