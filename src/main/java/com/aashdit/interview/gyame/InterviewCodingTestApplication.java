package com.aashdit.interview.gyame;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan(basePackages = "com.aashdit.*")
public class InterviewCodingTestApplication {

	public static void main(String[] args) {
		SpringApplication.run(InterviewCodingTestApplication.class, args);
	}

}
