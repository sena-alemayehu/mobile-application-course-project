package com.mohammedabdi.api.features.email.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "app.email-provider")
public record EmailProviderProperties(String apiKey, String from, String url, String logoUrl) {}
