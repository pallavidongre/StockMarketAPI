package com.nendrasys.service;

import com.nendrasys.model.StockDetailsModel;

import java.util.List;


public interface StockDetailsService {

    List<StockDetailsModel> getAllDetailsInDashboard();

    public StockDetailsModel addStockToMarketList(StockDetailsModel stockDetailsModel);

}
