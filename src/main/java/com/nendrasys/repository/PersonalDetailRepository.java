package com.nendrasys.repository;

import com.nendrasys.model.PersonalDetailModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PersonalDetailRepository extends JpaRepository<PersonalDetailModel, Integer> {

    @Override
    <S extends PersonalDetailModel> S save(S s);

    @Override
    List<PersonalDetailModel> findAll();
}
