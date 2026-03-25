package com.mohammedabdi.api;

import com.mohammedabdi.api.common.properties.AppProperties;
import com.mohammedabdi.api.common.properties.CorsProperties;
import com.mohammedabdi.api.features.auth.properties.JwtProperties;
import com.mohammedabdi.api.features.email.properties.EmailProviderProperties;
import com.mohammedabdi.api.features.otp.properties.OtpProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties({
  AppProperties.class,
  CorsProperties.class,
  JwtProperties.class,
  EmailProviderProperties.class,
  OtpProperties.class
})
public class ApiApplication {

  public static void main(String[] args) {
    SpringApplication.run(ApiApplication.class, args);
  }
}
