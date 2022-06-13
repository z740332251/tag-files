package com.tagfiles;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = {"com.tagfiles.controller"})
public class TagFilesApplication {

    public static void main(String[] args) {
        SpringApplication.run(TagFilesApplication.class, args);
    }

}
