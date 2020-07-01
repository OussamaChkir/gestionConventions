package com.hellokoding.springboot.view.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hellokoding.springboot.view.entity.User;
import com.hellokoding.springboot.view.repository.UserRepository;
import com.hellokoding.springboot.view.service.UserService;

@RestController
public class UserController {

	@Autowired
	private UserRepository UserRepository;
	
	@RequestMapping("/")
	 public ModelAndView index(Model model) {
		 
	        return new ModelAndView("index");
	 }
	
	@RequestMapping("/auth")
	 public ModelAndView auth(ModelAndView model) {
		User user =new User();
		model.addObject("userauth",user);
		model.setViewName("authentification");
	        return model;
	 }
	@PostMapping("/check")
	public ModelAndView checkuser(@ModelAttribute User userauth,ModelAndView model) {
	User user=UserRepository.findByLoginAndPassword(userauth.getLogin(), userauth.getPassword());
		if(user!=null)
			model.setViewName("redirect:/Conventions/list");
			else
				model.setViewName("index");
		return model;
	}
}
