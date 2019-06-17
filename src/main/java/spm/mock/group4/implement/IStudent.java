package spm.mock.group4.implement;

import java.util.List;

import spm.mock.group4.entity.custom.GroupAnotherCustom;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.custom.GradeCustom;
import spm.mock.group4.entity.custom.StudentCustom;

public interface IStudent {
	public Student getStudent(int student_id);

	public String studentUpdateInfo(int id, String email, String address, String phone, String description);

	public String studentUpdateInfo(int id, String tech);

	public String registerProfessor(int idProfessor, int idUser);

	// vũ
	List<Student> findAll(int id);

	// vũ
	List<StudentCustom> getStudentCustom(int id_group);

	// vũ
	StudentCustom getStudentDetailCustom(int id);
	//Nguyen
	public boolean isFull(int idGroup);

	List<GradeCustom> studentGrade(int userId);

	String point1(int answer, int answertrue);

	List<GroupAnotherCustom> studentGroup();
}
