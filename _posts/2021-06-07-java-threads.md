---
layout: post
title: Java Threads
date:   2021-06-07 08:00:07
description: "Threads in Java"
image: '/img/hero-java-threads.png'
# hero_image: /img/hero-java-threads.png
hero_height: is-small
published: true
tags: CS Java Multithreading
#canonical_url: 
comments: true
---

## We can create threads in multiple ways in java
1. By implementing Runnable interface
2. By extending Thread class
3. Using anonymous Thread class

```java
public class JavaThreadDemo {
    public static void main(String[] args) {

        Thread workerA = new Thread(new WorkerA()); //Passing runnable instance to Thread Constructor
        workerA.start();

        WorkerB workerB = new WorkerB();
        workerB.start();

        Thread workerC = new Thread(() -> System.out.println("I am worker C created as anonymous class -> " + Thread.currentThread().getName()));
        workerC.start();

        /**
         * IMP:
         * If we do this, still run method will get call but that
         * will we running in main thread itself instead of in new thread
         */
        workerB.run();
    }
}

class WorkerA implements Runnable {
    @Override
    public void run() {
        System.out.println("I am worker A -> " + Thread.currentThread().getName());
    }
}

class WorkerB extends Thread {
    @Override
    public void run() {
        System.out.println("I am worker B -> " + Thread.currentThread().getName());
    }
}
```

## Checkout thread creation in action

<iframe width="1280" height="720" src="https://www.youtube.com/embed/aITIXEYOov4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>