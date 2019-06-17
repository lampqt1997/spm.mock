package spm.mock.group4.entity.custom;

public class ProfessorCustom {
	private String phone;
	private String email;
	private String address;
	private String description;
	private String name;
	private String technologies;
	private String achivement;
	private String experience;
	private String groupRegister;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTechnologies() {
		return technologies;
	}
	public void setTechnologies(String technologies) {
		this.technologies = technologies;
	}
	public String getAchivement() {
		return achivement;
	}
	public void setAchivement(String achivement) {
		this.achivement = achivement;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getGroupRegister() {
		return groupRegister;
	}
	public void setGroupRegister(String groupRegister) {
		this.groupRegister = groupRegister;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public ProfessorCustom(String phone, String email, String address, String description, String name,
			String technologies, String achivement, String experience, String groupRegister) {
		super();
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.description = description;
		this.name = name;
		this.technologies = technologies;
		this.achivement = achivement;
		this.experience = experience;
		this.groupRegister = groupRegister;
	}
	
	
}
