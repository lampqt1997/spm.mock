package spm.mock.group4.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="roles")
public class Roles {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(name="Rname" , nullable=true)
	private String rname;
	@Column(name="Rdescription" , nullable=true)
	private String rdescription;
	
	public Roles() {
		super();
	}

	public Roles(int id, String rname, String rdescription) {
		super();
		this.id = id;
		this.rname = rname;
		this.rdescription = rdescription;
	}

	public Roles(String rname, String rdescription) {
		super();
		this.rname = rname;
		this.rdescription = rdescription;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getRdescription() {
		return rdescription;
	}

	public void setRdescription(String rdescription) {
		this.rdescription = rdescription;
	}

	@Override
	public String toString() {
		return "Roles [id=" + id + ", rname=" + rname + ", rdescription=" + rdescription + "]\n";
	}
	
}
