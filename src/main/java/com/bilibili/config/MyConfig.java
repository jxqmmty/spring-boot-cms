package com.bilibili.config;

import com.bilibili.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyConfig implements WebMvcConfigurer {
    @Bean
    LoginInterceptor loginInterceptor(){
    return new LoginInterceptor();
}
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/**")
                .excludePathPatterns("/home/img/**",
                        "/home/css/**",
                        "/home/js/**",
                        "/system/css/**",
                        "/system/fonts/**",
                        "/system/gridmanager/**",
                        "/system/images/**",
                        "/system/js/**",
                        "/system/login",
                        "/home/**");
    }
}