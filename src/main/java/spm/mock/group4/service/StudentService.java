package spm.mock.group4.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spm.mock.group4.dao.StudentDao;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.custom.GradeCustom;
import spm.mock.group4.entity.custom.GroupAnotherCustom;
import spm.mock.group4.entity.custom.StudentCustom;
import spm.mock.group4.implement.IStudent;

@Service
public class StudentService implements IStudent {
	@Autowired
	StudentDao studentDao;

	@Override
	public Student getStudent(int student_id) {
		return studentDao.getStudent(student_id);
	}

	@Override
	public String studentUpdateInfo(int id, String email, String address, String phone, String description) {
		return studentDao.studentUpdateInfo(id, email, address, phone, description);
	}

	@Override
	public String studentUpdateInfo(int id, String tech) {
		return studentDao.studentUpdateInfo(id, tech);
	}

	@Override
	@Transactional
	public String registerProfessor(int idProfessor, int idUser) {
		return studentDao.registerProfessor(idProfessor, idUser);
	}

	// Vu
	@Override
	public List<Student> findAll(int id) {
		return studentDao.findAll(id);
	}

	@Override
	@Transactional
	public List<StudentCustom> getStudentCustom(int id_group) {

		try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return studentDao.getStudentCustom(id_group);
	}

	@Override
	public StudentCustom getStudentDetailCustom(int id) {
		return studentDao.getStudentDetailCustom(id);
	}
	//Nguyen
	@Override
	@Transactional
	public List<GroupAnotherCustom> studentGroup() {
		// TODO Auto-generated method stub
		return studentDao.studentGroup();
	}

	@Override
	@Transactional
	public boolean isFull(int idGroup) {
		// TODO Auto-generated method stub
		return studentDao.isFull(idGroup);
	}

	@Override
	@Transactional
	public List<GradeCustom> studentGrade(int userId) {
		// TODO Auto-generated method stub
		return studentDao.studentGrade(userId);
	}

	@Override
	public String point1(int answer, int answertrue) {
		// TODO Auto-generated method stub
		return studentDao.point1(answer, answertrue);
	}

}
