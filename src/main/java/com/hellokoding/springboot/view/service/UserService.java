package com.hellokoding.springboot.view.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hellokoding.springboot.view.entity.User;
import com.hellokoding.springboot.view.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	UserRepository UserRepository;
	
	public User getUser(String login,String password) {
		
		return UserRepository.findByLoginAndPassword(login,password);
	}
}
