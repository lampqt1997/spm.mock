package spm.mock.group4.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.beans.factory.annotation.Autowired;

@Entity(name="professor")
public class Professor {
	@Id
	private int id;
	@Column(name="Pname" , nullable=true)
	private String pname;
	@Column(name="Pdescription" , nullable=true)
	private String pdescription;
	@Column(name="Ptechnologies" , nullable=true)
	private String ptechnologies;
	
	private String achivement;
	
	private String experience;
	private String group_register;
	
	@Autowired
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "id", referencedColumnName = "id",nullable = true)
	private User user;
	
	@Autowired
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "id", referencedColumnName = "id",nullable = true)
	private Topic topic;
	
	
	
	public Professor() {
		super();
	}

	public Professor(int id, String pname, String pdescription, String ptechnologies, String achivement,
			String experiences, String group_register, User user, Topic topic) {
		super();
		this.id = id;
		this.pname = pname;
		this.pdescription = pdescription;
		this.ptechnologies = ptechnologies;
		this.achivement = achivement;
		this.experience = experiences;
		this.group_register = group_register;
		this.user = user;
		this.topic = topic;
	}

	public Professor(int id, String pname, String pdescription, String ptechnologies, String achivement,
			String experiences, String group_register, User user) {
		super();
		this.id = id;
		this.pname = pname;
		this.pdescription = pdescription;
		this.ptechnologies = ptechnologies;
		this.achivement = achivement;
		this.experience = experiences;
		this.group_register = group_register;
		this.user = user;
	}

	public Professor(String pname, String pdescription, String ptechnologies, String achivement, String experiences,
			String group_register) {
		super();
		this.pname = pname;
		this.pdescription = pdescription;
		this.ptechnologies = ptechnologies;
		this.achivement = achivement;
		this.experience = experiences;
		this.group_register = group_register;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPdescription() {
		return pdescription;
	}

	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}

	public String getPtechnologies() {
		return ptechnologies;
	}

	public void setPtechnologies(String ptechnologies) {
		this.ptechnologies = ptechnologies;
	}

	public String getAchivement() {
		return achivement;
	}

	public void setAchivement(String achivement) {
		this.achivement = achivement;
	}

	public String getExperiences() {
		return experience;
	}

	public void setExperiences(String experiences) {
		this.experience = experiences;
	}

	public String getGroup_register() {
		return group_register;
	}

	public void setGroup_register(String group_register) {
		this.group_register = group_register;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Professor [id=" + id + ", pname=" + pname + ", pdescription=" + pdescription
				+ ", ptechnologies=" + ptechnologies + ", achivement=" + achivement + ", experiences="
				+ experience + ", group_register=" + group_register + ", user=" + user + "]";
	}
	
	
	
}
