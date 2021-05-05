package com.nendrasys.controller;

import com.nendrasys.model.StockDetailsModel;
import com.nendrasys.service.StockDetailsService;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/")
public class StockInsertionController {

    @Autowired
    private StockDetailsService stockDetailsService;

    Logger logger = Logger.getLogger(StockInsertionController.class);

    @RequestMapping(value = "/addCompany")
    public ModelAndView addCompany() {
        BasicConfigurator.configure();
        logger.info("Inside addCompany method at StockInsertionController class");
        ModelAndView model = new ModelAndView();
        model.setViewName("stockAddPage");
        return model;
    }

    @RequestMapping(value = "/saveCompany", method = RequestMethod.POST)
    public String saveCompany(StockDetailsModel stockDetailsModel) {
        logger.info("Inside saveCompany method at StockInsertionController class");
        stockDetailsService.addStockToMarketList(stockDetailsModel);
        return "saveCompanySuccessPage";
    }
}
