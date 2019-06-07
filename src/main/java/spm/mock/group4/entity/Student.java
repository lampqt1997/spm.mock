package spm.mock.group4.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapKeyJoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;

import org.springframework.beans.factory.annotation.Autowired;


@Entity(name="student")
public class Student {
	
	@Id
	private int id;
	
	@Column(name="Sname" , nullable=true)
	private String sname;
	@Column(name="Sdescription" , nullable=true)
	private String sdescription;
	@Column(name="Stechnologies" , nullable=true)
	private String stechnologies;
	@Column(name="student_code" , nullable=true)
	private String student_code;
	
	@Column(name="id_group" , nullable=true, updatable=false, insertable=false)
	private int id_group;
	
	@Autowired
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "id", referencedColumnName = "id",nullable = true)
	private User user;
	
	@OneToOne(mappedBy = "student")
	private Grade grade;
	
	@Autowired
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "id_group", referencedColumnName = "id",nullable = true)
	private GroupStudent groupStudent;
	
	
	public Student() {
		super();
	}

	

	public Student(int id, String sname, String sdesription, String stechnologies, String student_code, User user,
			Grade grade, GroupStudent groupStudent) {
		super();
		this.id = id;
		this.sname = sname;
		this.sdescription = sdesription;
		this.stechnologies = stechnologies;
		this.student_code = student_code;
		this.user = user;
		this.grade = grade;
		this.groupStudent = groupStudent;
	}



	public Student(String sname, String sdesription, String stechnologies, String student_code) {
		super();
		this.sname = sname;
		this.sdescription = sdesription;
		this.stechnologies = stechnologies;
		this.student_code = student_code;
	}

	

	public Student(int id, String sname, String sdesription, String stechnologies, String student_code, User user) {
		super();
		this.id = id;
		this.sname = sname;
		this.sdescription = sdesription;
		this.stechnologies = stechnologies;
		this.student_code = student_code;
		this.user = user;
	}

	public Student(int id, String sname, String sdesription, String stechnologies, String student_code, User user, Grade grade) {
		super();
		this.id = id;
		this.sname = sname;
		this.sdescription = sdesription;
		this.stechnologies = stechnologies;
		this.student_code = student_code;
		this.user = user;
		this.grade = grade;
	}	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSdesription() {
		return sdescription;
	}

	public void setSdesription(String sdesription) {
		this.sdescription = sdesription;
	}

	public String getStudent_code() {
		return student_code;
	}

	public void setStudent_code(String student_code) {
		this.student_code = student_code;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Grade getGrade() {
		return grade;
	}

	public void setGrade(Grade grade) {
		this.grade = grade;
	}

	
	public String getStechnologies() {
		return stechnologies;
	}



	public void setStechnologies(String stechnologies) {
		this.stechnologies = stechnologies;
	}



	public GroupStudent getGroupStudent() {
		return groupStudent;
	}



	public void setGroupStudent(GroupStudent groupStudent) {
		this.groupStudent = groupStudent;
	}
	


	public String getSdescription() {
		return sdescription;
	}



	public void setSdescription(String sdescription) {
		this.sdescription = sdescription;
	}



	public int getId_group() {
		return id_group;
	}



	public void setId_group(int id_group) {
		this.id_group = id_group;
	}



	@Override
	public String toString() {
		return "Student [id=" + id + ",sname=" + sname + ",sdescription=" + sdescription + ",stechnologies="
				+ stechnologies + ",student_code=" + student_code + ",id_group=" + id_group + ",user=" + user
				+ ",grade=" + grade + ",groupStudent=" + groupStudent + "]\n";
	}






}
