package spm.mock.group4.service;

import java.util.List;

import javax.persistence.NoResultException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spm.mock.group4.dao.ProfessorDao;
import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.entity.Professor;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.custom.GroupStudentCustom;
import spm.mock.group4.entity.custom.ProfessorCustom;
import spm.mock.group4.implement.IProfessor;

@Service
public class ProfessorService implements IProfessor {
	
	@Autowired
	ProfessorDao professorDao;
	
	@Override
	@Transactional
	public float totalAvg(int id_group) {
		return professorDao.totalAvg(id_group);
	}

	@Override
	@Transactional
	public List<Student> listStudentByIdGroup(int id_group) {
		return professorDao.listStudentByIdGroup(id_group);
	}

	@Override
	@Transactional
	public List<GroupStudentCustom> customsById(int id_professor) {
		return professorDao.customsById(id_professor);
	}

	@Override
	@Transactional
	public List<GroupStudentCustom> customsAnotherById(int id_professor) {
		return professorDao.customsAnotherById(id_professor);
	}

	@Override
	@Transactional
	public int countProfessor() {
		return professorDao.countProfessor();
	}

	@Override
	@Transactional
	public int countGroup() {
		return professorDao.countGroup();
	}

	@Override
	@Transactional
	public int countGroupRegistered() {
		return professorDao.countGroupRegistered();
	}
	
	//Vu
	@Override
	@Transactional
	public List<Professor> findAll() {
		return professorDao.findAll();
	}

	@Override
	@Transactional
	public Professor findOne(int id) {
		return professorDao.findOne(id);
	}

	@Override
	public ProfessorCustom getProfessorCustom(int id) {
		return professorDao.getProfessorCustom(id);
	}

	@Override
	@Transactional
	public int register_reject(int groupId, int professorId) {	
		return professorDao.register_reject(groupId, professorId);
	}

	@Override
	@Transactional
	public int register_agree(int groupId, int professorId) {
		
		return professorDao.register_agree(groupId, professorId);
	}

}
