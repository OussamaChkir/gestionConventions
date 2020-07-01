package com.hellokoding.springboot.view.entity;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "convention")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Convention {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(name = "type")
	private String type;
	@Column(name = "objet")
	private String objet;
	@Column(name = "participant1")
	private String participant1;
	@Column(name = "participant2")
	private String participant2;
	@Column(name = "participant3")
	private String participant3;
	@Column(name = "participant4")
	private String participant4;
	@Column(name = "editiondate")
	private String editiondate;
	@Column(name = "entreedate")
	private String entreedate;
	@Column(name = "expireedate")
	private String expireedate;
	@Column(name = "signdate1")
	private String signdate1;
	@Column(name = "signdate2")
	private String signdate2;
	@Column(name = "signdate3")
	private String signdate3;
	@Column(name = "signdate4")
	private String signdate4;
	
}
