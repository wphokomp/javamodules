package com.coffee.types;

import com.coffee.Coffee;

import java.util.logging.Level;
import java.util.logging.Logger;

public class Arabica implements Coffee {

    static Logger logger;

    static {
        System.setProperty("java.util.logging.SimpleFormatter.format",
                "[%1$tF %1$tT] [%4$-7s] %5$s %n");
        logger = Logger.getLogger(Robusta.class.getName());
    }
    @Override
    public void drink() {
        logger.log(Level.INFO,"Arabica");
    }

}
