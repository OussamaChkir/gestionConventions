package com.hellokoding.springboot.view.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.hellokoding.springboot.view.entity.Convention;
import com.hellokoding.springboot.view.service.ConventionService;

@Controller
@RequestMapping("/Conventions")
public class ConventionController {
	@Autowired
	ConventionService ConventionService;
	
	//list des conventions
	@RequestMapping("/list")
	public ModelAndView getList(ModelAndView model, HttpSession session) {
		if(session.getAttribute("currentUser")==null) {
			model.setViewName("redirect:/auth");
		}else{
		List<Convention> theList =ConventionService.GetAllConvention();
		model.addObject("Conventions", theList);
		model.setViewName("listConvention");
		}
		return model;
	}

	//aller au convention form pour ajouter
	@RequestMapping("/addConvention")
	public ModelAndView addConvvention(ModelAndView model, HttpSession session) {
		if(session.getAttribute("currentUser")==null) {
			model.setViewName("redirect:/auth");
		}else{
		model.addObject("conventionEdit", new Convention());
		model.setViewName("formConvention");
		}
		return model;
	}
	
	//aller au convention form pour modifier
	@GetMapping("/updateForm")
	public ModelAndView UpdateConvention(@RequestParam("conventionId") int theId,ModelAndView model, HttpSession session) {
		if(session.getAttribute("currentUser")==null) {
			model.setViewName("redirect:/auth");
		}else{
		Convention theConvention =ConventionService.GetConventionById(theId);
		model.addObject("conventionEdit",theConvention);
		model.setViewName("formConvention");
		}
		return model;
	}
	
	//ajouter ou modifier convention
	@PostMapping("/editConvention")
	public ModelAndView editConvention(ModelAndView model,@ModelAttribute Convention Convention , HttpSession session) {
		if(session.getAttribute("currentUser")==null) {
			model.setViewName("redirect:/auth");
		}else{
		Convention conv=ConventionService.GetConventionById(Convention.getId());
		if(conv!=null)
			ConventionService.UpdateConvention(Convention);
		else
			ConventionService.SaveConvention(Convention);
		
		model.setViewName("redirect:/Conventions/list");
		}
		return model;
	}
	
	//supprimer convention
	@GetMapping("/delete")
	public ModelAndView deleteCustomer(@RequestParam("conventionId") int theId,ModelAndView model, HttpSession session) {
		if(session.getAttribute("currentUser")==null) {
			model.setViewName("redirect:/auth");
		}else{
		Convention c= ConventionService.GetConventionById(theId);
		ConventionService.deleteConvention(c);
		model.setViewName("redirect:/Conventions/list");
		}
		return model;
	}
	
	//aller au page view
	@GetMapping("/view")
	public ModelAndView viewConventionr(@RequestParam("conventionId") int theId,ModelAndView model, HttpSession session) {
		if(session.getAttribute("currentUser")==null) {
			model.setViewName("redirect:/auth");
		}else{
		Convention c= ConventionService.GetConventionById(theId);
		model.addObject("Convention",c);
		model.setViewName("viewConvention");
		}
		return model;
	}
	
	//recherche multiple convention
	@GetMapping("/search")
	public ModelAndView search(@RequestParam("type")String type,@RequestParam("objet")String objet,@RequestParam("editiondate")String dateEdit,@RequestParam("entreedate")String DateEntree,@RequestParam("expireedate")String DateExpiree,ModelAndView model, HttpSession session) {
		if(session.getAttribute("currentUser")==null) {
			model.setViewName("redirect:/auth");
		}else{
		List<Convention> theList;
		if(type!=null || objet!=null) {
			 theList =ConventionService.GetByTypeOrObjet(type, objet, dateEdit, DateEntree, DateExpiree);
			 model.addObject("Conventions", theList);
		}
		 
		
		
		model.setViewName("listConvention");
		}
		return model;		
	}
}
