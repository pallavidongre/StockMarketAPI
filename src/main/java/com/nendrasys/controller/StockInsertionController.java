package com.nendrasys.controller;

import com.nendrasys.model.StockDetailsModel;
import com.nendrasys.service.StockDetailsService;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping(value = "/")
public class StockInsertionController {

    @Autowired
    private StockDetailsService stockDetailsService;

    Logger logger = Logger.getLogger(StockInsertionController.class);

    @RequestMapping(value = "/addCompany")
    public String addCompany(Model model) {
        BasicConfigurator.configure();
        logger.info("Inside addCompany method at StockInsertionController class");
        model.addAttribute("stockDetailsModel", new StockDetailsModel());
        return "stockAddPage";
    }

    @RequestMapping(value = "/saveCompany", method = RequestMethod.POST)
    public String saveCompany(@ModelAttribute("stockDetailsModel") StockDetailsModel stockDetailsModel, Model model) throws IllegalStateException {
        logger.info("Inside saveCompany method at StockMarketApl In StockInsertionController class");
        String msg = null;
        try {
            StockDetailsModel stockDetailsModel1 = stockDetailsService.addStockToMarketList(stockDetailsModel);
            if (stockDetailsModel1 != null) {
                msg = "Added Company Successfully";
            } else {
                msg = "Failed To Add Stock Insertion Market Information";
            }
            model.addAttribute("msg", msg);
            return "saveCompanySuccessPage";
        } catch (Exception e) {
            msg = "Failed To Add Stock Insertion Market Information";
            model.addAttribute("msg", msg);
            return "saveCompanySuccessPage";
        }
    }
}
