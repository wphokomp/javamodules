package com.tea.types;

import com.tea.Tea;

public class Rooiboos implements Tea {
    @Override
    public void drink() {
        System.out.println("Strong black Rooiboos tea");
    }
}
