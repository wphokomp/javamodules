package com.app;

import com.coffee.Coffee;
import com.coffee.CoffeeMaker;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CoffeeApp {

    static Logger logger;

    static {
        System.setProperty("java.util.logging.SimpleFormatter.format",
                "[%1$tF %1$tT] [%4$-7s] %5$s %n");
        logger = Logger.getLogger(CoffeeApp.class.getName());
    }

    public static void main(String[] args) {
        CoffeeMaker coffeeMaker = new CoffeeMaker();
        final Coffee wakeUpCoffee = coffeeMaker.brewRobusta();
        final Coffee eveningCoffee = coffeeMaker.brewArabica();


        wakeUpCoffee.drink();
        eveningCoffee.drink();

        if(!DriverManager.getDrivers().hasMoreElements()){
            logger.log(Level.SEVERE,"To Use a DB - Please setup your JDBC drivers");
        };

    }

}

