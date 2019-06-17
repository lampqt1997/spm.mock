package spm.mock.group4.entity.custom;


//vũ
public class StudentCustom {
	
	private int id;
	private String name;
	private String studentCode;
	private String email;
	private String address;
	private String phone;
	private String stechnologies;
	private String sdescription;
	
	private float grade;
	public StudentCustom(int id, String name, String studentCode, float grade) {
		super();
		this.id = id;
		this.name = name;
		this.studentCode = studentCode;
		this.setGrade(grade);
		
	}
	
	public StudentCustom(String name, String studentCode, String email, String address, String phone,
			String stechnologies, String sdescription) {
		super();
		this.name = name;
		this.studentCode = studentCode;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.stechnologies = stechnologies;
		this.sdescription = sdescription;
	}
	

	public StudentCustom() {
		
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStechnologies() {
		return stechnologies;
	}

	public void setStechnologies(String stechnologies) {
		this.stechnologies = stechnologies;
	}

	public String getSdescription() {
		return sdescription;
	}

	public void setSdescription(String sdescription) {
		this.sdescription = sdescription;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStudentCode() {
		return studentCode;
	}
	public void setStudentCode(String studentCode) {
		this.studentCode = studentCode;
	}
	public float getGrade() {
		return grade;
	}
	public void setGrade(float grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "StudentCustom [id=" + id + ",name=" + name + ",studentCode=" + studentCode + ",email=" + email
				+ ",address=" + address + ",phone=" + phone + ",stechnologies=" + stechnologies + ",sdescription="
				+ sdescription + ",grade=" + grade + "]\n";
	}
	
	
	
	
}
