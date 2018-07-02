package com.app;

import com.coffee.Coffee;
import com.coffee.CoffeeMaker;

public class ILikeCoffee {

    public static void main(String[] args) {
        CoffeeMaker coffeeMaker = new CoffeeMaker();
        final Coffee wakeUpCoffee = coffeeMaker.brewRobusta();
        final Coffee eveningCoffee = coffeeMaker.brewArabica();

        wakeUpCoffee.drink();
        eveningCoffee.drink();

    }

}
