package com.olgafranco.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import com.olgafranco.app.model.Privilege;


@CrossOrigin
public interface PrivilegeRepository extends JpaRepository<Privilege, Long> {
}