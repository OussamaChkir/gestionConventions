package com.hellokoding.springboot.view.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hellokoding.springboot.view.entity.Convention;

import com.hellokoding.springboot.view.repository.ConventionRepository;
@Service
public class ConventionService {

	@Autowired
	ConventionRepository ConventionRepository;
	
	
	public void SaveConvention(Convention C) {
		
		 ConventionRepository.save(C);
	}
	
	public List<Convention> GetAllConvention(){
		
		return ConventionRepository.findAll();
	}
	
	public Convention GetConventionById(int id){
		
		return ConventionRepository.findById(id).orElse(null);
	}
	public void UpdateConvention(Convention c) {
		Convention c1=ConventionRepository.findById(c.getId()).orElse(null);
		c1.setType(c.getType());
		c1.setObjet(c.getObjet());
		c1.setParticipant1(c.getParticipant1());
		c1.setParticipant2(c.getParticipant2());
		c1.setParticipant3(c.getParticipant3());
		c1.setParticipant4(c.getParticipant4());
		c1.setEditiondate(c.getEditiondate());
		c1.setEntreedate(c.getEntreedate());
		c1.setExpireedate(c.getExpireedate());
		c1.setSigndate1(c.getSigndate1());
		c1.setSigndate2(c.getSigndate2());
		c1.setSigndate3(c.getSigndate3());
		c1.setSigndate4(c.getSigndate4());
		ConventionRepository.save(c1);
	}
	public void deleteConvention(Convention c) {
	
	ConventionRepository.delete(c);
	}
	public List<Convention> GetByTypeOrObjet(String type,String objet,String dateEdit,String DateEntree,String DateExpiree){
		
		return ConventionRepository.findByTypeOrObjetOrEditiondateOrEntreedateOrExpireedate(type, objet, dateEdit, DateEntree, DateExpiree);
	}
}
