package spm.mock.group4.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name="answer")
public class Answer {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "id_question")
	private int id_question;
	private int answer;
	private int id_student;
	private Date date_answer;
	
	
	@OneToOne(fetch = FetchType.EAGER )
	@JoinColumn(name="id_question" , referencedColumnName="id",insertable=false,updatable=false)
	private Question question;
	
	
	public Answer(int id_question, int answer, int id_student, Date date_answer) {
		super();
		this.id_question = id_question;
		this.answer = answer;
		this.id_student = id_student;
		this.date_answer = date_answer;
	}
	public Answer(int id, int id_question, int answer, int id_student, Date date_answer, Question question) {
		super();
		this.id = id;
		this.id_question = id_question;
		this.answer = answer;
		this.id_student = id_student;
		this.date_answer = date_answer;
		this.question = question;
	}
	public Answer(int id, int id_question, int answer, int id_student, Date date_answer) {
		super();
		this.id = id;
		this.id_question = id_question;
		this.answer = answer;
		this.id_student = id_student;
		this.date_answer = date_answer;
	}
	public Answer() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_question() {
		return id_question;
	}
	public void setId_question(int id_question) {
		this.id_question = id_question;
	}
	public int getAnswer() {
		return answer;
	}
	public void setAnswer(int answer) {
		this.answer = answer;
	}
	public int getId_student() {
		return id_student;
	}
	public void setId_student(int id_student) {
		this.id_student = id_student;
	}
	public Date getDate_answer() {
		return date_answer;
	}
	public void setDate_answer(Date date_answer) {
		this.date_answer = date_answer;
	}
	
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	@Override
	public String toString() {
		return "Answer [id=" + id + ",id_question=" + id_question + ",answer=" + answer + ",id_student=" + id_student
				+ ",date_answer=" + date_answer + ",question=" + question + "]\n";
	}
	
}
