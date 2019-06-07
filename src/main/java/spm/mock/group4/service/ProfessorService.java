package spm.mock.group4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spm.mock.group4.dao.ProfessorDao;
import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.custom.GroupStudentCustom;
import spm.mock.group4.implement.IProfessor;

@Service
public class ProfessorService implements IProfessor {
	
	@Autowired
	ProfessorDao professorDao;
	
	@Override
	@Transactional
	public List<GroupStudent> listRegisterGroup(int id_professor) {
		return professorDao.listRegisterGroup(id_professor);
	}

	@Override
	@Transactional
	public List<GroupStudent> listNotRegisterGroup(int id_professor) {
		return professorDao.listNotRegisterGroup(id_professor);
	}

	@Override
	public float totalAvg(int id_group) {
		
		return professorDao.totalAvg(id_group);
	}

	@Override
	public List<Student> listStudentByIdGroup(int id_group) {
		// TODO Auto-generated method stub
		return professorDao.listStudentByIdGroup(id_group);
	}

	@Override
	@Transactional
	public List<GroupStudentCustom> customsById(int id_professor) {
		
		return professorDao.customsById(id_professor);
	}

}
