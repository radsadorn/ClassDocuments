package com.company;

import java.util.concurrent.Flow;

public class StringSubscription implements Flow.Subscription {
    @Override
    public void request(long n) {}

    @Override
    public void cancel() {}
}
