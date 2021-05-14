---
layout: post
title: Java Threads
date:   2021-05-11 08:00:07
description: "Threads in Java"
image: '/img/hero-java-threads.jpg'
# hero_image: /img/hero-java-threads.jpg 
hero_height: is-small
published: true
tags: CS Java Multithreading
#canonical_url: 
comments: true
---

We can create threads broadly in 2 ways in java.
1. By implementing Runnable interface
2. By extending Thread class

```java
public class ThreadExamplesDriver {
    public static void main(String[] args) {

        Thread myThreadA = new Thread(new ThreadA());
        myThreadA.start();

        Thread myThreadB = new Thread(new ThreadB());
        myThreadB.start();

        /**
         * IMP:
         * If we do this, still run method will get call but that
         * will we running in main thread itself instead in new thread
         *
         */
        myThreadB.run();
    }
}

class ThreadA implements Runnable {
    @Override
    public void run() {
        System.out.println("This thread is created by Runnable " + Thread.currentThread().getName());
    }
}

class ThreadB extends Thread {
    public void run() {
        System.out.println("This thread extends Thread class  " + Thread.currentThread().getName());
    }
}
```