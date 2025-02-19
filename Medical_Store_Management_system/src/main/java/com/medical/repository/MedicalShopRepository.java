package com.medical.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.medical.model.MedicalShop;
@Repository
public interface MedicalShopRepository extends JpaRepository<MedicalShop, Integer> {

}
