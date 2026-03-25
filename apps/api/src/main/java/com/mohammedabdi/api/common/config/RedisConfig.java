package com.mohammedabdi.api.common.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.GenericJacksonJsonRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializer;

@Configuration
public class RedisConfig {

  private static final RedisSerializer<String> STRING_SERIALIZER = RedisSerializer.string();

  @Bean
  public RedisTemplate<String, Object> redisTemplate(RedisConnectionFactory connectionFactory) {

    RedisTemplate<String, Object> template = new RedisTemplate<>();
    template.setConnectionFactory(connectionFactory);

    GenericJacksonJsonRedisSerializer jsonSerializer =
        GenericJacksonJsonRedisSerializer.builder().enableUnsafeDefaultTyping().build();

    template.setKeySerializer(STRING_SERIALIZER);
    template.setHashKeySerializer(STRING_SERIALIZER);

    template.setValueSerializer(jsonSerializer);
    template.setHashValueSerializer(jsonSerializer);

    template.afterPropertiesSet();

    return template;
  }
}
