package spm.mock.group4.entity.custom;

public class GroupAnotherCustom {
	private int id;
	private String nameLeader;
	private String status;
	public GroupAnotherCustom(int id, String nameLeader, String status) {
		super();
		this.id = id;
		this.nameLeader = nameLeader;
		this.status = status;
	}
	public GroupAnotherCustom() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNameLeader() {
		return nameLeader;
	}
	public void setNameLeader(String nameLeader) {
		this.nameLeader = nameLeader;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "GroupAnotherCustom [id=" + id + ",nameLeader=" + nameLeader + ",status=" + status + "]\n";
	}
	
}
