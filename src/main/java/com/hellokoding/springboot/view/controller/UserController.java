package com.hellokoding.springboot.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.hellokoding.springboot.view.entity.User;
import com.hellokoding.springboot.view.repository.UserRepository;
import com.hellokoding.springboot.view.service.UserService;

@Controller
public class UserController {

	String message;
	@Autowired
	private UserRepository UserRepository;
	
	@RequestMapping("/")
	 public ModelAndView index(Model model) {
		 
	        return new ModelAndView("redirect:/auth");
	 }
	
	@RequestMapping("/auth")
	 public ModelAndView auth(ModelAndView model) {
		User user =new User();
		model.addObject("erreur",message);
		model.addObject("userauth",user);
		model.setViewName("authentification");
	        return model;
	 }
	@PostMapping("/check")
	public ModelAndView checkuser(@ModelAttribute User userauth,ModelAndView model) {
	User user=UserRepository.findByLoginAndPassword(userauth.getLogin(), userauth.getPassword());
		if(user!=null)
			model.setViewName("redirect:/Conventions/list");
			else {
				message ="Invalid Username or Password";
				model.addObject("erreur",message);
				model.setViewName("redirect:/auth");
			}
		return model;
	}
}
