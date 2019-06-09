package spm.mock.group4.implement;

import spm.mock.group4.entity.Student;
public interface IStudent {
	public Student getStudent(int student_id);
	public String studentUpdateInfo(int id,String email,String address,String phone,String description);
	public String studentUpdateInfo(int id,String tech);
}
