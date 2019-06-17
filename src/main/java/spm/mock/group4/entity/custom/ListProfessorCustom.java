package spm.mock.group4.entity.custom;

public class ListProfessorCustom {
	private int profesId;
	private String profesName;
	private int groupRegis;
	
	public ListProfessorCustom(){
		
	}
	
	public ListProfessorCustom(int profesId, String profesName, int groupRegis) {
		super();
		this.profesId = profesId;
		this.profesName = profesName;
		this.groupRegis = groupRegis;
	}

	public int getProfesId() {
		return profesId;
	}

	public String getProfesName() {
		return profesName;
	}

	public int getGroupRegis() {
		return groupRegis;
	}

	public void setProfesId(int profesId) {
		this.profesId = profesId;
	}

	public void setProfesName(String profesName) {
		this.profesName = profesName;
	}

	public void setGroupRegis(int groupRegis) {
		this.groupRegis = groupRegis;
	}
	
	
	

}
