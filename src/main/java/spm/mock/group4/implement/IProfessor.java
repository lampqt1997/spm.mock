package spm.mock.group4.implement;

import java.util.List;

import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.custom.GroupStudentCustom;

public interface IProfessor {
	
	List<GroupStudent> listRegisterGroup(int id_professor);
	List<GroupStudent> listNotRegisterGroup(int id_professor);
	float totalAvg(int id_group);
	List<Student> listStudentByIdGroup(int id_group);
	List<GroupStudentCustom> customsById(int id_professor);
}
