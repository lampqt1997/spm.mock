package spm.mock.group4.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapKey;
import javax.persistence.MapKeyColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;

@Entity(name="grade")
public class Grade {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="id_student")
	private int id_student;
	
	private float grade;
	
	private int id_test;
		
	@OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "id_student",updatable=false, insertable=false)
	private Student student;
	
	@OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "id_test",updatable=false, insertable=false)
	private Test test;
	
	
	public Grade(int id_student, float grade, int id_test, Student student, Test test) {
		super();
		this.id_student = id_student;
		this.grade = grade;
		this.id_test = id_test;
		this.student = student;
		this.test = test;
	}
	public Grade(int id, int id_student, float grade, int id_test, Student student, Test test) {
		super();
		this.id = id;
		this.id_student = id_student;
		this.grade = grade;
		this.id_test = id_test;
		this.student = student;
		this.test = test;
	}
	public Grade(int id, int id_student, float grade, Student student) {
		super();
		this.id = id;
		this.id_student = id_student;
		this.grade = grade;
		this.student = student;
	}
	public Grade(int id, int id_student, float grade) {
		super();
		this.id = id;
		this.id_student = id_student;
		this.grade = grade;
	}
	public Grade(int id_student, float grade) {
		super();
		this.id_student = id_student;
		this.grade = grade;
	}
	public Grade() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_student() {
		return id_student;
	}
	public void setId_student(int id_student) {
		this.id_student = id_student;
	}
	public float getGrade() {
		return grade;
	}
	public void setGrade(float grade) {
		this.grade = grade;
	}
	

	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
	public int getId_test() {
		return id_test;
	}
	public void setId_test(int id_test) {
		this.id_test = id_test;
	}
	public Test getTest() {
		return test;
	}
	public void setTest(Test test) {
		this.test = test;
	}
	@Override
	public String toString() {
		return "Grade [id=" + id + ",id_student=" + id_student + ",grade=" + grade + ",id_test=" + id_test + "]\n";
	}
	
}
