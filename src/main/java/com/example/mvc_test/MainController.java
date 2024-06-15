package com.example.mvc_test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @Autowired
    private MainService mainService;


    @GetMapping("/getData")
    public String getData() {
        return "hello"; // Return your view name
    }


}
