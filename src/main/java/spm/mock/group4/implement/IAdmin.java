package spm.mock.group4.implement;

import java.util.List;

import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.custom.GroupStudentCustom;
import spm.mock.group4.entity.custom.ListProfessorCustom;
import spm.mock.group4.entity.custom.StudentCustom;
import spm.mock.group4.entity.custom.StudentCustom2;

public interface IAdmin {
	List<GroupStudentCustom> getListGrStuCustom();
	List<ListProfessorCustom> getListProCustom();
	List<StudentCustom2> getListStudentCustom();
	long countGroup();
	long countStudent();
	long countAccount();
	long countProfessor();
	long countTopic();
	
	
}
