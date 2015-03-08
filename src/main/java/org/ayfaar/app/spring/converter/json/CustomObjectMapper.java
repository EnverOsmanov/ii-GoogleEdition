package org.ayfaar.app.spring.converter.json;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.text.SimpleDateFormat;

@Component("jacksonObjectMapper")
public class CustomObjectMapper extends ObjectMapper {

    @PostConstruct
    public void afterPropertiesSet() throws Exception {
        this.setDateFormat(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
        this.setSerializationInclusion(JsonInclude.Include.NON_NULL);
    }
}