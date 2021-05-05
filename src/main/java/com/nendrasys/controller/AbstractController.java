package com.nendrasys.controller;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import org.springframework.web.bind.annotation.ModelAttribute;

public abstract class AbstractController {
    public static final Logger logger = LogManager.getLogger(AbstractController.class);

    @ModelAttribute
    public void getBasicConfigurations()
    {
        BasicConfigurator.configure();
    }



}
