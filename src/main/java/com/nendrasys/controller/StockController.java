package com.nendrasys.controller;

import com.nendrasys.model.PersonalDetailModel;
import com.nendrasys.model.StockDetailsModel;
import com.nendrasys.repository.PersonalDetailRepository;
import com.nendrasys.repository.StockDetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class StockController extends AbstractController {

    @Autowired
    private StockDetailsRepository stockDetailsRepository;

    @Autowired
    private PersonalDetailRepository personalDetailRepository;

    @GetMapping("/stockDetail/{id}")
    public ModelAndView stockDetail(@PathVariable("id") Integer id) {
        StockDetailsModel stockDetailsModel = null;
        logger.info("inside StockDetail method");
        ModelAndView modelAndView = new ModelAndView("stockDetailPage");

        stockDetailsModel = stockDetailsRepository.findById(id).orElse(null);
        if (stockDetailsModel != null) {
            modelAndView.addObject("stockDetailsModel", stockDetailsModel);
            return modelAndView;
        } else {
            logger.error("there is no stockDetail for this id='" + id + "'");
            modelAndView.addObject("mes", "Data not found for this id='" + id + "'");
        }
        return modelAndView;
    }

    @PostMapping("/personalDetail")
    public String personalDetail(@ModelAttribute("stockDetailsModel") StockDetailsModel stockDetailsModel, @RequestParam("id") Integer id, Model model) {
        stockDetailsRepository.saveAndFlush(stockDetailsModel);
        logger.info("inside personalDetail method");
        StockDetailsModel stockDetailsModel1 = stockDetailsRepository.findById(id).orElse(null);
        if (stockDetailsModel1 != null && stockDetailsModel.getRequestQuantity() != null) {
            model.addAttribute("stockDetailsModel", stockDetailsModel1);
            model.addAttribute("personalDetail", new PersonalDetailModel());
            return "personalDetail";
        } else {
            logger.error("there is no stockDetail for this id='" + id + "'");
            model.addAttribute("msg", "Something Went Wrong try again from stockDetail page");
        }
        return "redirect:/stockDetail/"+id+"";
    }

    @PostMapping("/personalDetailSaveToH2")
    public String personalDetailSaveToH2(@ModelAttribute("personalDetail") PersonalDetailModel personalDetailModel, Model model) {
        logger.info("inside personalDetailSaveToH2 method");
        if (personalDetailModel.getFullName() != null && personalDetailModel.getCompanyName() != null && !personalDetailModel.getContactNo().isEmpty() && personalDetailModel.getCountryName() != null &&
                personalDetailModel.getAge() != null && personalDetailModel.getDate() != null && personalDetailModel.getEmail() != null && personalDetailModel.getRequestQuantity() != 0) {
            PersonalDetailModel personalDetailModel1 = personalDetailRepository.save(personalDetailModel);
            if(personalDetailModel1!=null)
            {
                model.addAttribute("success", "successfully personal data is added");
                return "success";
            }
        } else {
            model.addAttribute("error", "Data not saved to h2 database");
        }
        return "error";
    }


}
