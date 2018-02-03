package com.ogmatech.techstile.techstile_api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class TechstileApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(TechstileApiApplication.class, args);
	}
}
