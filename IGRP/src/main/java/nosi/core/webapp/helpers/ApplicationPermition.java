package nosi.core.webapp.helpers;
/**
 * Emanuel
 * 19 Oct 2018
 */
public class ApplicationPermition {

	private String dad = "igrp";
	private Integer profId;
	private Integer ogrId;
	
	public ApplicationPermition() {
		
	}
	
	public ApplicationPermition(String dad,Integer ogrId, Integer profId) {
		super();
		this.dad = dad;
		this.profId = profId;
		this.ogrId = ogrId;
	}
	
	public String getDad() {
		return dad;
	}
	public void setDad(String dad) {
		this.dad = dad;
	}
	public Integer getProfId() {
		return profId;
	}
	public void setProfId(Integer profId) {
		this.profId = profId;
	}
	public Integer getOgrId() {
		return ogrId;
	}
	public void setOgrId(Integer ogrId) {
		this.ogrId = ogrId;
	}	
	
}
