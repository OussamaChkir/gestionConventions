package com.hellokoding.springboot.view.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hellokoding.springboot.view.entity.Convention;
import com.hellokoding.springboot.view.service.ConventionService;

@RestController
@RequestMapping("/Conventions")
public class ConventionController {
	@Autowired
	ConventionService ConventionService;
	
	//list conventions
	@RequestMapping("/list")
	public ModelAndView getList(ModelAndView model) {
		List<Convention> theList =ConventionService.GetAllConvention();
		model.addObject("Conventions", theList);
		model.setViewName("listConvention");
		return model;
	}

	//go to add convention form
	@RequestMapping("/addConvention")
	public ModelAndView addConvvention(ModelAndView model) {
		
		model.addObject("conventionEdit", new Convention());
		model.setViewName("formConvention");
		
		return model;
	}
	
	//go to edit convention form
	@GetMapping("/updateForm")
	public ModelAndView showFormForUpdate(@RequestParam("conventionId") int theId,ModelAndView model) {
		Convention theConvention =ConventionService.GetConventionById(theId);
		model.addObject("conventionEdit",theConvention);
		model.setViewName("formConvention");
	
		return model;
	}
	
	//add or edit Convention
	@PostMapping("/editConvention")
	public ModelAndView editConvention(ModelAndView model,@ModelAttribute Convention Convention ) {
		
		Convention conv=ConventionService.GetConventionById(Convention.getId());
		if(conv!=null)
			ConventionService.UpdateConvention(Convention);
		else
			ConventionService.SaveConvention(Convention);
		
		model.setViewName("redirect:/Conventions/list");
		return model;
	}
	
	@GetMapping("/delete")
	public ModelAndView deleteCustomer(@RequestParam("conventionId") int theId,ModelAndView model) {
		
		Convention c= ConventionService.GetConventionById(theId);
		ConventionService.deleteConvention(c);
		model.setViewName("redirect:/Conventions/list");
		return model;
	}
	@GetMapping("/view")
	public ModelAndView viewCustomer(@RequestParam("conventionId") int theId,ModelAndView model) {
		
		Convention c= ConventionService.GetConventionById(theId);
		model.addObject("Convention",c);
		model.setViewName("viewConvention");
		return model;
	}
	
	@GetMapping("/search")
	public ModelAndView search(@RequestParam("type")String type,@RequestParam("objet")String objet,@RequestParam("editiondate")String dateEdit,@RequestParam("entreedate")String DateEntree,@RequestParam("expireedate")String DateExpiree,ModelAndView model) {
		List<Convention> theList;
		if(type!=null || objet!=null) {
			 theList =ConventionService.GetByTypeOrObjet(type, objet, dateEdit, DateEntree, DateExpiree);
			 model.addObject("Conventions", theList);
		}
		 
		
		model.setViewName("listConvention");
		return model;		
	}
}
