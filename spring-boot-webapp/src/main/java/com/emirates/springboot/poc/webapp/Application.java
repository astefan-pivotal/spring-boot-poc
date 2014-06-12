package com.emirates.springboot.poc.webapp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 *Created  by s766952 on 12/06/2014.
 */
@EnableAutoConfiguration
@ComponentScan(basePackages = {"com.emirates"})
@Configuration
public class Application extends SpringBootServletInitializer {

    private static final Logger LOGGER = LoggerFactory.getLogger(Application.class);

    public static void main(String[] args) throws Exception {
        LOGGER.info("Starting Application");
        SpringApplication.run(Application.class, args);
    }
}
