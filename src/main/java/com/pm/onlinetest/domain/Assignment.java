package com.pm.onlinetest.domain;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Assignment {

 	@Id
    @GeneratedValue
    private Integer id;
 	private LocalDateTime start_date;
 	private LocalDateTime end_date;
 	private Integer count;
 	private boolean started;
 	private boolean finished;
 	private String accesscode;
 	
 	@OneToOne	
 	private User studentId;
 	
 	@OneToOne	
 	private User coachId;
 	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	

	public LocalDateTime getStart_date() {
		return start_date;
	}

	public void setStart_date(LocalDateTime start_date) {
		this.start_date = start_date;
	}

	public LocalDateTime getEnd_date() {
		return end_date;
	}

	public void setEnd_date(LocalDateTime end_date) {
		this.end_date = end_date;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public boolean isFinished() {
		return this.finished;
	}

	public void setFinished(boolean finished) {
		this.finished = finished;
	}

	public boolean isStarted() {
		return started;
	}

	public void setStarted(boolean started) {
		this.started = started;
	}

	public User getStudentId() {
		return studentId;
	}

	public void setStudentId(User studentId) {
		this.studentId = studentId;
	}

	public User getCoachId() {
		return coachId;
	}

	public void setCoachId(User coachId) {
		this.coachId = coachId;
	}


	public String getAccesscode() {
		return accesscode;
	}

	public void setAccesscode(String accesscode) {
		this.accesscode = accesscode;
	}
	
	
	@Override
	public boolean equals(Object object){
		
		if (object == null)
			return false;
		if (!object.getClass().equals(this.getClass()))
			return false;
		
		Assignment assgn = (Assignment)object;
		if (assgn.getId() == this.getId())
			return true;
		
		return false;
	}
	
	@Override
	public int hashCode(){
		
		return this.getId();
	}
}
