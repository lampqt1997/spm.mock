package spm.mock.group4.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.springframework.beans.factory.annotation.Autowired;

@Entity(name="question")
public class Question {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private int id_test;
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private int answerTrue;
	
	
	public Question(int id_test, String question, String option1, String option2, String option3, String option4,
			int answerTrue) {
		super();
		this.id_test = id_test;
		this.question = question;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.answerTrue = answerTrue;
	}


	public Question(int id, int id_test, String question, String option1, String option2, String option3,
			String option4, int answerTrue) {
		super();
		this.id = id;
		this.id_test = id_test;
		this.question = question;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.answerTrue = answerTrue;
	
	}
	

	public Question() {
		super();
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getId_test() {
		return id_test;
	}


	public void setId_test(int id_test) {
		this.id_test = id_test;
	}


	public String getQuestion() {
		return question;
	}


	public void setQuestion(String question) {
		this.question = question;
	}


	public String getOption1() {
		return option1;
	}


	public void setOption1(String option1) {
		this.option1 = option1;
	}


	public String getOption2() {
		return option2;
	}


	public void setOption2(String option2) {
		this.option2 = option2;
	}


	public String getOption3() {
		return option3;
	}


	public void setOption3(String option3) {
		this.option3 = option3;
	}


	public String getOption4() {
		return option4;
	}


	public void setOption4(String option4) {
		this.option4 = option4;
	}


	public int getAnswerTrue() {
		return answerTrue;
	}


	public void setAnswerTrue(int answerTrue) {
		this.answerTrue = answerTrue;
	}



	@Override
	public String toString() {
		return "Question [id=" + id + ",id_test=" + id_test + ",question=" + question + ",option1=" + option1
				+ ",option2=" + option2 + ",option3=" + option3 + ",option4=" + option4 + ",answerTrue=" + answerTrue
				+ "]\n";
	}



	
}
