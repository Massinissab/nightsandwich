package com.nightsandwich.config;

import java.util.List;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJacksonHttpMessageConverter;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "com.nightsandwich")
@EnableWebMvc
public class MvcConfiguration extends WebMvcConfigurerAdapter {
    
    @Bean
    public ViewResolver getViewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/mobile/");
        resolver.setSuffix(".jsp");
        return resolver;
    }
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }
    
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
       /* registry.addViewController("/products/sandwich").setViewName("products/sandwich");
        registry.addViewController("/products/pates").setViewName("products/pates");
        registry.addViewController("/products/desserts").setViewName("products/desserts");
        registry.addViewController("/products/boissons").setViewName("products/boissons");
        registry.addViewController("/products/gourmandises").setViewName("products/gourmandises");*/
        registry.addViewController("/bootstrap").setViewName("bootstrap");
        registry.addViewController("/about").setViewName("about");
        registry.addViewController("/contact").setViewName("contact");
        registry.addViewController("/mobile").setViewName("mobile");
    }

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        converters.add(new MappingJacksonHttpMessageConverter());
        super.configureMessageConverters(converters); 
        
    }
    
    
}
