package com.olgafranco.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;
import com.olgafranco.app.model.Stock;



@Repository
@CrossOrigin
public interface StockRepository extends JpaRepository<Stock, Long> {
}