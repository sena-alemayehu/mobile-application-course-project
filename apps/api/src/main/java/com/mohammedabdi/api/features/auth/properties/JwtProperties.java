package com.mohammedabdi.api.features.auth.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "app.security.jwt")
public record JwtProperties(
    String secretKey,
    Long expirationMs,
    Long refreshExpirationMs,
    String issuer,
    String audience) {}
