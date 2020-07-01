package com.hellokoding.springboot.view.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hellokoding.springboot.view.entity.Convention;

public interface ConventionRepository extends JpaRepository<Convention, Integer> {

	List<Convention> findByType(String type);
	List<Convention> findByObjet(String objet);
	List<Convention> findByTypeOrObjetOrEditiondateOrEntreedateOrExpireedate(String type,String objet,String dateEdit,String DateEntree,String DateExpiree);
}
