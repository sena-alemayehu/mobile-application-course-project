package com.mohammedabdi.api.common.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "spring.profiles")
public record AppProperties(String active) {
  public boolean devMode() {
    return active.equalsIgnoreCase("dev");
  }
}
