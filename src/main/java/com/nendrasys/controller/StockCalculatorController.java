package com.nendrasys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StockCalculatorController {

    @RequestMapping("/totalPrice/{price}/{qty}")
    public String calculateStockPrice(Model model, @PathVariable Double price, @PathVariable int qty){
        Double totalPrice= price*qty;
        model.addAttribute("totalPrice", totalPrice);
        return "totalPrice";
    }
}
