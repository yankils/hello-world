package com.demo.app.model;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Random;

public class HamburgerDeterminer {

    private final ArrayList<String> toppings;
    private static final String toppingsList = "files/toppings.txt";
    private Random random;

    public HamburgerDeterminer() {
        toppings = new ArrayList<>();
        fillToppings();
        setRandomGenerator();
    }

    private void setRandomGenerator() {
        random = new Random();
    }

    private void fillToppings() {
        ClassLoader classLoader = getClass().getClassLoader();

        try (BufferedReader reader = new BufferedReader(new InputStreamReader(classLoader.getResourceAsStream(toppingsList)))) {
            String line;
            while ((line = reader.readLine()) != null) {
                toppings.add(line);
            }
        } catch (IOException e) {
            System.out.println("Error reading file");
        }
    }

    private int getRandomInt() {
        return random.nextInt(toppings.size());
    }

    public String getToppingsList(String color) {
        StringBuilder stringBuilder = new StringBuilder();

        for (int i = 0; i < color.length() - 1; i++) {
            stringBuilder.append(toppings.get(getRandomInt()));
            stringBuilder.append(",");
        }
        stringBuilder.append(toppings.get(getRandomInt()));
        return stringBuilder.toString();
    }
}
