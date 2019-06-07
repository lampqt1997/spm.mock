package spm.mock.group4.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="groupstudent")
public class GroupStudent {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String info;
	private int leader;
	private int student1;
	private int student2;
	private int student3;
	private int student4;
	private int student5;
	private int professor;
	
	
	public GroupStudent() {
		super();
	}
	public GroupStudent(int id, String info, int leader, int student1, int student2, int student3, int student4,
			int student5, int professor) {
		super();
		this.id = id;
		this.info = info;
		this.leader = leader;
		this.student1 = student1;
		this.student2 = student2;
		this.student3 = student3;
		this.student4 = student4;
		this.student5 = student5;
		this.professor = professor;
	}
	public GroupStudent(String info, int leader, int student1, int student2, int student3, int student4, int student5,
			int professor) {
		super();
		this.info = info;
		this.leader = leader;
		this.student1 = student1;
		this.student2 = student2;
		this.student3 = student3;
		this.student4 = student4;
		this.student5 = student5;
		this.professor = professor;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getLeader() {
		return leader;
	}
	public void setLeader(int leader) {
		this.leader = leader;
	}
	public int getStudent1() {
		return student1;
	}
	public void setStudent1(int student1) {
		this.student1 = student1;
	}
	public int getStudent2() {
		return student2;
	}
	public void setStudent2(int student2) {
		this.student2 = student2;
	}
	public int getStudent3() {
		return student3;
	}
	public void setStudent3(int student3) {
		this.student3 = student3;
	}
	public int getStudent4() {
		return student4;
	}
	public void setStudent4(int student4) {
		this.student4 = student4;
	}
	public int getStudent5() {
		return student5;
	}
	public void setStudent5(int student5) {
		this.student5 = student5;
	}
	public int getProfessor() {
		return professor;
	}
	public void setProfessor(int professor) {
		this.professor = professor;
	}
	@Override
	public String toString() {
		return "GroupStudent [id=" + id + ", info=" + info + ", leader=" + leader + ", student1=" + student1
				+ ", student2=" + student2 + ", student3=" + student3 + ", student4=" + student4
				+ ", student5=" + student5 + ", professor=" + professor + "]";
	}
	
	
}
