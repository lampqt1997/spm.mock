package spm.mock.group4.entity;

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

import org.hibernate.annotations.Generated;
import org.springframework.beans.factory.annotation.Autowired;

@Entity(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String username;
	private String pass;
	
	@Column(insertable=false, updatable=false)
	private int role_id;
	
	@Autowired
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "id", referencedColumnName = "id",nullable = true)
	private UserDetail userDetail;
	
	@Autowired
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "role_id", referencedColumnName = "id",nullable = true)
	private Roles roles;

	public User(int id, String username, String pass, int role_id, UserDetail userDetail, Roles roles) {
		super();
		this.id = id;
		this.username = username;
		this.pass = pass;
		this.role_id = role_id;
		this.userDetail = userDetail;
		this.roles = roles;
	}

	public User(String username, String pass, int role_id) {
		super();
		this.username = username;
		this.pass = pass;
		this.role_id = role_id;
	}

	public User() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public int getRole_id() {
		return role_id;
	}

	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}

	public UserDetail getUserDetail() {
		return userDetail;
	}

	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}

	public Roles getRoles() {
		return roles;
	}

	public void setRoles(Roles roles) {
		this.roles = roles;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ",username=" + username + ",pass=" + pass + ",role_id=" + role_id + "]\n";
	}

	
}
