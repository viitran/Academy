package com.example.demo.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping()
public class GreetingController {
    @GetMapping("/greeting")
    public String greeting(@RequestParam(defaultValue = "") String name) {
        return String.format("Hello %s!", name);
    }
}
