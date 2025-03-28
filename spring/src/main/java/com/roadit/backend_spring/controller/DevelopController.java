package com.roadit.backend_spring.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DevelopController {

    @GetMapping("/develop2")
    public String helloDevelop() {
        return "hello develop2";
    }
}