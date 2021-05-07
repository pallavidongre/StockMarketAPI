package com.nendrasys.service;

import com.nendrasys.model.StockDetailsModel;


public interface StockDetailsService {

    public StockDetailsModel addStockToMarketList(StockDetailsModel stockDetailsModel);

    List<StockDetailsModel> getAllDetailsInDashboard();

}
