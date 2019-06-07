package spm.mock.group4.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="topic")
public class Topic {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="Tname" , nullable=true)
	private String tname;
	@Column(name="Tdescription" , nullable=true)
	private String tdescription;
	
	private int id_professor;
	public Topic() {
		super();
	}
	public Topic(int id, String tname, String tdescription, int id_professor) {
		super();
		this.id = id;
		this.tname = tname;
		this.tdescription = tdescription;
		this.id_professor = id_professor;
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
	public String getTdescription() {
		return tdescription;
	}
	public void setTdescription(String tdescription) {
		this.tdescription = tdescription;
	}
	public int getId_professor() {
		return id_professor;
	}
	public void setId_professor(int id_professor) {
		this.id_professor = id_professor;
	}
	@Override
	public String toString() {
		return "Topic [id=" + id + ", tname=" + tname + ", tdescription=" + tdescription + ", id_professor="
				+ id_professor + "]";
	}
	
	
	
}
