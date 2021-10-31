package com.company;

import java.util.concurrent.Flow;

public abstract class StringSubscriber implements Flow.Subscriber {

    @Override
    public void onError(Throwable throwable) {
        System.out.println("Error!! " + throwable.toString() + "\n");
    }

    @Override
    public void onComplete() {
        System.out.println("Completed.");
    }

    @Override
    public abstract void onSubscribe(Flow.Subscription subscription);

    @Override
    public abstract void onNext(Object item);

    public abstract boolean checkContains(String item);
}
