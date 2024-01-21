package com.example.javaeeproject.servlet;
import java.io.File;
import java.io.IOException;

public class FileCreationTest {
    public static void main(String[] args) {
        String directoryPath = "/home/stationone/Documents/school projects/final exam week projects/AirLine_Management_SystemProject/src/main/webapp/img/";
        String fileName = "test1.txt";

        File file = new File(directoryPath, fileName);

        try {
            if (file.createNewFile()) {
                System.out.println("File created successfully");
            } else {
                System.out.println("File already exists");
            }
        } catch (IOException e) {
            System.out.println("Error creating file: " + e.getMessage());
        }
    }
}
