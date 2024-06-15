package com.example.mvc_test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class MainService {

    @Autowired
    private RestTemplate restTemplate;


    public String fetchDataFromExternalApi() {
        String apiUrl = "http://localhost:8081/api/main/helloTest";
        String responseData = restTemplate.getForObject(apiUrl, String.class);
        return responseData;
    }

}
