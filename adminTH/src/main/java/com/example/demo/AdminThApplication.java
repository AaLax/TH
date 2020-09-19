package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.ConfigurationWarningsApplicationContextInitializer;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class AdminThApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(AdminThApplication.class, args);
		 
		
	}

}
