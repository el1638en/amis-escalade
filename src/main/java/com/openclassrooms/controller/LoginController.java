package com.openclassrooms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String index(Model model) {
        return "index";
    }


    @PostMapping("/login")
    public String login(Model model) {
        return "index";
    }
}
