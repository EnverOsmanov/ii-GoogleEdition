package org.ayfaar.app;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class IndexRemover {


    public static void main(String[] args) {
        List<String> list = getStringsFrom("D:/Том 1.кусочек.txt");
        list.forEach(string -> string = prepareString(string));
        writeToFile(list);
    }

    private static void writeToFile(List<String> list) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter("D:/Том 1.кусочек - новый.txt"))) {
            for (String string : list) {
                writer.write(string);
                writer.newLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static List<String> getStringsFrom(String filename) {
        List<String> list = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(filename))) {
            while (reader.ready()) {
                String input = reader.readLine();
                input = prepareString(input);
                list.add(input);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return list;
    }

    private static String prepareString(String input) {
        String[] parts = input.split(" ");

        if (parts.length == 0)
            return input;

        String firstPart = parts[0];
        if ( firstPart.matches("\\d+\\.\\d+\\.*")) {
            if ((firstPart.length() == 7)) {
                input = input.substring(input.indexOf(" "),
                        input.length());
            }
        }
        return input;
    }
}
