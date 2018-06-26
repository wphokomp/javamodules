package com.coffee.types;

import com.coffee.Coffee;

public class Robusta implements Coffee {

    @Override
    public void drink() {
        System.out.println("Robusta");
    }

}
