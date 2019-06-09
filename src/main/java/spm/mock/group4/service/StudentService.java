package spm.mock.group4.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spm.mock.group4.dao.StudentDao;
import spm.mock.group4.entity.Student;
import spm.mock.group4.implement.IStudent;

@Service
public class StudentService implements IStudent {
	@Autowired
	StudentDao studentDao;

	@Override
	public Student getStudent(int student_id) {
		// TODO Auto-generated method stub
		return studentDao.getStudent(student_id);
	}

	@Override
	public String studentUpdateInfo(int id,String email, String address, String phone, String description) {
		// TODO Auto-generated method stub
		return studentDao.studentUpdateInfo(id, email, address, phone, description); 
	}

	@Override
	public String studentUpdateInfo(int id,String tech) {
		// TODO Auto-generated method stub
		return studentDao.studentUpdateInfo(id, tech);
	}

}
