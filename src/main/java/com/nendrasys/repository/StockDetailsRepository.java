package com.nendrasys.repository;

import com.nendrasys.model.StockDetailsModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;

@Repository
public interface StockDetailsRepository extends JpaRepository<StockDetailsModel, Serializable> {

    @Override
    <S extends StockDetailsModel> S save(S s);

    @Override
    List<StockDetailsModel> findAll();

    @Override
    Optional<StockDetailsModel> findById(Serializable serializable);
}
