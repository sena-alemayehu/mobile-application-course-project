package com.mohammedabdi.api.common.properties;

import java.util.List;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "cors")
public record CorsProperties(
    List<String> allowedOrigins, List<String> allowedMethods, Long maxAge) {
  public CorsProperties {
    allowedOrigins = (allowedOrigins == null) ? List.of() : List.copyOf(allowedOrigins);
    allowedMethods = (allowedMethods == null) ? List.of() : List.copyOf(allowedMethods);
  }
}
