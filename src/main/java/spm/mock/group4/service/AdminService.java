package spm.mock.group4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spm.mock.group4.dao.AdminDAO;
import spm.mock.group4.dao.ProfessorDao;
import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.custom.GroupStudentCustom;
import spm.mock.group4.entity.custom.ListProfessorCustom;
import spm.mock.group4.entity.custom.StudentCustom;
import spm.mock.group4.entity.custom.StudentCustom2;
import spm.mock.group4.implement.IAdmin;

@Service
public class AdminService implements IAdmin{
	
	@Autowired
	private AdminDAO adminDAO;


	
	@Override
	@Transactional
	public List<GroupStudentCustom> getListGrStuCustom() {
		return adminDAO.getListGrStuCustom();
	}



	@Override
	@Transactional
	public List<ListProfessorCustom> getListProCustom() {
		return adminDAO.getListProCustom();
	}



	@Override
	@Transactional
	public List<StudentCustom2> getListStudentCustom() {
		return adminDAO.getListStudentCustom();
	}



	@Override
	@Transactional
	public long countGroup() {
		return adminDAO.countGroup();
	}



	@Override
	@Transactional
	public long countStudent() {
		return adminDAO.countStudent();
	}



	@Override
	@Transactional
	public long countAccount() {
		return adminDAO.countAccount();
	}



	@Override
	@Transactional
	public long countProfessor() {
		return adminDAO.countProfessor();
	}



	@Override
	@Transactional
	public long countTopic() {
		return adminDAO.countTopic();
	}




}
