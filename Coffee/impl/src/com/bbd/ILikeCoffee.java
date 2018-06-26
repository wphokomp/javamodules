package com.bbd;

import com.coffee.Coffee;
import com.coffee.CoffeeMaker;

public class ILikeCoffee {

    public static void main(String[] args) {
        CoffeeMaker coffeeMaker = new CoffeeMaker();
        final Coffee wakeUpCoffee = coffeeMaker.brewRobusta(); // robusta
        final Coffee eveningCoffee = coffeeMaker.brewArabica(); // arabica

        wakeUpCoffee.drink();
        eveningCoffee.drink();

    }

}
