package com.nendrasys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomePageController {

    @GetMapping("/")
    public String homePage(){

        return "homepage";
    }


    @GetMapping("/header")
    public String headerPage(){

        return "header";
    }

    @GetMapping("/footer")
    public String footerPage(){

        return "footer";
    }

    @GetMapping("/homeimage")
    public String homeimage(){

        return "homeimage";
    }
}
