package spm.mock.group4.implement;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.entity.Professor;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.custom.GroupStudentCustom;
import spm.mock.group4.entity.custom.ProfessorCustom;

public interface IProfessor {
	//Lampqt---
	float totalAvg(int id_group);

	List<Student> listStudentByIdGroup(int id_group);

	List<GroupStudentCustom> customsById(int id_professor);

	List<GroupStudentCustom> customsAnotherById(int id_professor);

	int countProfessor();

	int countGroup();

	int countGroupRegistered();

	int register_reject(int groupId, int professorId);

	int register_agree(int groupId, int professorId);
	//Lampqt---
	
	// Vu
	List<Professor> findAll();

	Professor findOne(int id);

	ProfessorCustom getProfessorCustom(int id);
	// Vu
}
