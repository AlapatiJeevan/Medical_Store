package com.medical.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.medical.model.MedicalShop;
import com.medical.service.MedicalShopService;
@Controller
public class MedicalShopController {
	@Autowired
	private MedicalShopService service;
	@RequestMapping("/")
	public String getIndex() {
		return "index.jsp";
	}
	
	@RequestMapping("/save")
	public ModelAndView saveMedicine(@ModelAttribute MedicalShop medicalshop) {
		MedicalShop response = service.save(medicalshop);
		
		ModelAndView mv = new ModelAndView("addmed.jsp");
		if(response != null) {
			mv.addObject("response", "Medicine added Successfully......");
		}
		else {
			mv.addObject("response","Medicine not added.");
		}
		return mv;
	}
	
	@RequestMapping("/findbyid")
	public ModelAndView searchMedicine(@RequestParam Integer id) {
		MedicalShop medicine = service.findById(id);
		ModelAndView mv;
		if(medicine.getId() == 0) {
			mv = new ModelAndView("searchmed.jsp");
			mv.addObject("response","Medicine Not Found.");
		}
		else {
			mv = new ModelAndView("searchmedresult.jsp");
			mv.addObject("medicine",medicine);
		}
		return mv;
	}
	
	@RequestMapping("/findAll")
	public ModelAndView getAllMedicines() {
		List<MedicalShop> medicine = service.findAll();
		ModelAndView mv = new ModelAndView("viewallmed.jsp");
		mv.addObject("medlist",medicine);
		return mv;
	}
	
	@RequestMapping("/editmedicine")
	public ModelAndView updateMedicine(@ModelAttribute MedicalShop medicine) {
		MedicalShop response = service.update(medicine);
		ModelAndView mv = new ModelAndView("/findAll");
		return mv;
	}
	
	@RequestMapping("/deletebyid")
	public ModelAndView deleteMedicine(@RequestParam Integer id) {
		service.deleteMedicine(id);
		ModelAndView mv = new ModelAndView("findAll");
		return mv;
	}
}
