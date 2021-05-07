package com.nendrasys.service;

import com.nendrasys.model.StockDetailsModel;
import com.nendrasys.repository.StockDetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
public class StockDetailsServiceImpl implements StockDetailsService {

    @Autowired

    private StockDetailsRepository stockDetailsRepository;

    @Override
    public StockDetailsModel addStockToMarketList(StockDetailsModel stockDetailsModel) throws IllegalStateException {
      return stockDetailsRepository.save(stockDetailsModel);
    }



    StockDetailsRepository stockDetailsRepository;

    @Override
    public List<StockDetailsModel> getAllDetailsInDashboard() {

        return stockDetailsRepository.findAll();
    }
}
