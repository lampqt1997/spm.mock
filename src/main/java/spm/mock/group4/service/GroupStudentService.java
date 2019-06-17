package spm.mock.group4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spm.mock.group4.dao.GroupStudentDAO;
import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.implement.IGroupStudent;

@Service
public class GroupStudentService implements IGroupStudent<GroupStudent,Integer>{
	
	@Autowired
	private GroupStudentDAO groupStudentDAO;


	@Override
	public List<GroupStudent> findAll() {
		List<GroupStudent> list = groupStudentDAO.findAll();
		return list;
	}


	@Override
	public GroupStudent findByid(int id) {
		return groupStudentDAO.findByid(id);
	}

	

	

}
