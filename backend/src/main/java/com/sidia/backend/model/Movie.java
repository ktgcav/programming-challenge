package com.sidia.backend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

	@Data
	@Entity
	@Table(name = "MOVIE")
	public class Movie {
		
		@Id
		@Column(name = "tconst")
		private String tconst;
		
		@Column(name = "titleType")
		private String titleType;
		
		@Column(name = "primaryTitle")
		private String primaryTitle;
		
		@Column(name = "originalTitle")
		private String originalTitle;
		
		@Column(name = "isAdult")
		private Double isAdult;
		
		@Column(name = "startYear")
		private Double startYear;
		
		@Column(name = "endYear")
		private String endYear;
		
		@Column(name = "runtimeMinutes")
		private Double runtimeMinutes;
		
		@Column(name = "genres")
		private String genres;
		
		@Column(name = "averagerating")
		private Double averagerating;
		
		@Column(name = "numvotes")
		private Double numvotes;

	}