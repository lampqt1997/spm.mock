package spm.mock.group4.entity.custom;

public class GroupStudentCustom {
	
	private int id;
	private String leader;
	private float grade;
	private String professor;
	
	public GroupStudentCustom(int id, String leader, float grade, String professor) {
		super();
		this.id = id;
		this.leader = leader;
		this.grade = grade;
		this.professor = professor;
	}
	public GroupStudentCustom(int id, String leader, float grade) {
		super();
		this.id = id;
		this.leader = leader;
		this.grade = grade;
	}
	public GroupStudentCustom() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLeader() {
		return leader;
	}
	public void setLeader(String leader) {
		this.leader = leader;
	}
	public float getGrade() {
		return grade;
	}
	public void setGrade(float grade) {
		this.grade = grade;
	}
	
	public String getProfessor() {
		return professor;
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}
	@Override
	public String toString() {
		return "GroupStudentCustom [id=" + id + ",leader=" + leader + ",grade=" + grade + ",professor=" + professor
				+ "]\n";
	}
	
	
	
}
