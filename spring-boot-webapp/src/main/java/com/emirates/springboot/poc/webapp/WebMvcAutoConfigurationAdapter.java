package com.emirates.springboot.poc.webapp;

import javax.servlet.jsp.JspFactory;

import org.apache.jasper.runtime.JspFactoryImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
public class WebMvcAutoConfigurationAdapter extends WebMvcConfigurerAdapter {
    @Bean
    public UrlBasedViewResolver viewResolver(){
        UrlBasedViewResolver viewResolver = new UrlBasedViewResolver();
        viewResolver.setViewClass(TilesView.class);
        return viewResolver;
    }

    @Bean
    @Order(value=Ordered.LOWEST_PRECEDENCE-1)
    public TilesViewResolver tilesViewResolver(){
        return new TilesViewResolver();
    }

    @Bean
    public TilesConfigurer tilesConfigurer(){
        JspFactory.setDefaultFactory(new JspFactoryImpl());
        System.out.println("Entering tiles configurer");
        TilesConfigurer tilesConfigurer = new TilesConfigurer();
        tilesConfigurer.setDefinitions(new String[] {"/META-INF/tiles.xml"});
        tilesConfigurer.setCompleteAutoload(true);
        return tilesConfigurer;
    }
}