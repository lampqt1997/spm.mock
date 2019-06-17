package spm.mock.group4.entity.custom;

public class StudentCustom2 {
	private int studentId;
	private String userName;
	private String studentName;
	public StudentCustom2(int studentId, String userName, String studentName) {
		super();
		this.studentId = studentId;
		this.userName = userName;
		this.studentName = studentName;
	}
	public int getStudentId() {
		return studentId;
	}
	public String getUserName() {
		return userName;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	
	

}
