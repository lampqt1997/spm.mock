package spm.mock.group4.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.springframework.beans.factory.annotation.Autowired;

@Entity(name="test")
public class Test {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="Tname" , nullable=true)
	private String tname;
	private String during;
	
	
	@Autowired
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "id_test", referencedColumnName = "id",nullable = true)
	private List<Question> questions;


	public Test(int id, String tname, String during, List<Question> questions) {
		super();
		this.id = id;
		this.tname = tname;
		this.during = during;
		this.questions = questions;
	}


	public Test() {
		super();
	}


	public Test(String tname, String during) {
		super();
		this.tname = tname;
		this.during = during;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTname() {
		return tname;
	}


	public void setTname(String tname) {
		this.tname = tname;
	}


	public String getDuring() {
		return during;
	}


	public void setDuring(String during) {
		this.during = during;
	}


	public List<Question> getQuestions() {
		return questions;
	}


	public void setQuestions(List<Question> questions) {
		this.questions = questions;
	}
	
	
}
