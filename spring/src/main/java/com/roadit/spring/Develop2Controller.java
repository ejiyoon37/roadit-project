package com.roadit.spring;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class Develop2Controller {

    private final UserTestRepository userTestRepository;

    public Develop2Controller(UserTestRepository userTestRepository) {
        this.userTestRepository = userTestRepository;
    }

    @GetMapping("/develop2")
    public List<UserTest> getUsers() {
        return userTestRepository.findAll();
    }
}