package com.nendrasys.controller;

import com.nendrasys.model.StockDetailsModel;
import com.nendrasys.service.StockDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class StockDetailsController {

    @Autowired
    StockDetailsService stockDetailsService;

    @RequestMapping(value = "/getAllDetailsInDashboard", method = RequestMethod.GET)
    public String getAllDetailsInDashboard(Model model) {
        List<StockDetailsModel> stockDetailsModel = stockDetailsService.getAllDetailsInDashboard();

        try {
            if (stockDetailsModel != null) {
                model.addAttribute("stockDetailsModel", stockDetailsModel);

                return "getAllDetailsInDashboardPage";
            }
        } catch (NullPointerException e) {

            return "errorPage";
        }
        return "errorPage";
    }
}
