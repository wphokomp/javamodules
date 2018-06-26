package com.coffee.types;

import com.coffee.Coffee;

public class Arabica implements Coffee {

    @Override
    public void drink() {
        System.out.println("Arabica");
    }

}
