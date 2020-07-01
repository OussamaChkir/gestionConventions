package com.hellokoding.springboot.view.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hellokoding.springboot.view.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	User findByLoginAndPassword(String login, String password);
}
