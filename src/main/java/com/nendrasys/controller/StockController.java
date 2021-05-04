package com.nendrasys.controller;

import com.nendrasys.model.PersonalDetailModel;
import com.nendrasys.model.StockDetailsModel;
import com.nendrasys.repository.PersonalDetailRepository;
import com.nendrasys.repository.StockDetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StockController  extends abstractController {

    @Autowired
    private StockDetailsRepository stockDetailsRepository;

    @Autowired
    private PersonalDetailRepository personalDetailRepository;

    @GetMapping("/stockDetail")
    public ModelAndView stockDetail(@RequestParam("id") Integer id, Model model)
    {
        logger.info("inside StockDetail method");
        ModelAndView modelAndView=new ModelAndView("stockDetailPage");
        try{
            StockDetailsModel stockDetailsModel=stockDetailsRepository.findById(id).orElse(new StockDetailsModel());
            model.addAttribute("stockDetailsModel",stockDetailsModel);
            return modelAndView;
        } catch (NullPointerException e) {
            logger.error("there is no stockDetail for this id='"+id+"'");
            e.printStackTrace();
        }
          return null;
    }
    @PostMapping("/personalDetail")
    public String personalDetail(@ModelAttribute("stockDetailsModel") StockDetailsModel stockDetailsModel,@RequestParam("id") Integer id,Model model)
    {
        stockDetailsRepository.saveAndFlush(stockDetailsModel);
        logger.info("inside personalDetail method");
        model.addAttribute("id",id);
        try{
            StockDetailsModel stockDetailsModel1=stockDetailsRepository.findById(id).orElse(new StockDetailsModel());
            model.addAttribute("stockDetailsModel",stockDetailsModel1);
            model.addAttribute("personalDetail",new PersonalDetailModel());
            return "personalDetail";
        } catch (NullPointerException e) {
            logger.error("there is no stockDetail for this id='"+id+"'");
            e.printStackTrace();
        }
        return "error";
    }

    @PostMapping("/personalDetailSaveToH2")
    public String personalDetailSaveToH2(@ModelAttribute("personalDetail") PersonalDetailModel personalDetailModel,Model model)
    {
        logger.info("inside personalDetailSaveToH2 method");
               try{
                   personalDetailRepository.save(personalDetailModel);
                   model.addAttribute("success","successfully personal data is added");
                   return "success";
               } catch (NumberFormatException e) {
                   e.printStackTrace();
               }
        return "error";
    }
}
