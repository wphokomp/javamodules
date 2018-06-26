package com.coffee;

import com.coffee.types.Arabica;
import com.coffee.types.Robusta;

public class CoffeeMaker {

    public Coffee brewArabica() {
        return new Arabica();
    }

    public Coffee brewRobusta() {
        return new Robusta();
    }

}
