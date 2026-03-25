package com.mohammedabdi.api.features.otp.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "app.security.otp")
public record OtpProperties(int expiryMinutes, int cooldownSeconds, int maxValue) {}
