package spm.mock.group4.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity(name="userdetail")
public class UserDetail {
	
	@Id
	private int id;
	private String phone;
	private String email;
	private String address;
	private int sex;
	private Date birth_of_date;
	public UserDetail(int id, String phone, String email, String address, int sex, Date birth_of_date) {
		super();
		this.id = id;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.sex = sex;
		this.birth_of_date = birth_of_date;
	}
	public UserDetail() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public Date getBirth_of_date() {
		return birth_of_date;
	}
	public void setBirth_of_date(Date birth_of_date) {
		this.birth_of_date = birth_of_date;
	}
	@Override
	public String toString() {
		return "UserDetail [id=" + id + ", phone=" + phone + ", email=" + email + ", address=" + address
				+ ", sex=" + sex + ", birth_of_date=" + birth_of_date + "]\n";
	}
	
	
	
}
