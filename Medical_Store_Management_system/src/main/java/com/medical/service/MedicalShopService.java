package com.medical.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medical.model.MedicalShop;
import com.medical.repository.MedicalShopRepository;
@Service
public class MedicalShopService {
	@Autowired
	private MedicalShopRepository repository;
	
	public MedicalShop save(MedicalShop medicalshop) {
		return repository.save(medicalshop);
		
	}

	public MedicalShop findById(Integer id) {
		return repository.findById(id).orElse(new MedicalShop());
	}

	public List<MedicalShop> findAll() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	public MedicalShop update(MedicalShop medicine) {
		return repository.save(medicine);
	}

	public void deleteMedicine(Integer id) {
		repository.deleteById(id);
		
	}
}
