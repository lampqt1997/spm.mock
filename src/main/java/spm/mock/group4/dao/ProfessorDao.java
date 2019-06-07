package spm.mock.group4.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.entity.Professor;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.custom.GroupStudentCustom;
import spm.mock.group4.implement.IProfessor;

@Repository
public class ProfessorDao implements IProfessor {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<GroupStudent> listRegisterGroup(int id_professor) {
		Session session = sessionFactory.getCurrentSession();
		Professor pr = session.get(Professor.class, id_professor);
		
		String[] arrId = pr.getGroup_register().split("-");
		System.out.println(arrId[0]);
		List<GroupStudent> groupStudents = new ArrayList<GroupStudent>();
		for (String s :arrId) {
			groupStudents.add(session.get(GroupStudent.class, Integer.parseInt(s)));	
		}
		System.out.println(groupStudents);
		return groupStudents;
	}

	@Override
	public List<GroupStudent> listNotRegisterGroup(int id_professor) {
		Session session = sessionFactory.getCurrentSession();
		Professor pr = session.get(Professor.class, id_professor);
		String notIn = pr.getGroup_register().replaceAll("-", ",");
		String query = "from groupstudent gr where gr.id not in ("+notIn+")";
		List<GroupStudent> groupStudents = session.createQuery(query).getResultList();
		
		return groupStudents;
	}
	
	@Override
	public float totalAvg(int id_group) {
		float grade = 0;
		Session session = sessionFactory.getCurrentSession();
		GroupStudent gr = session.get(GroupStudent.class, id_group);
		List<Student> students = listStudentByIdGroup(id_group);
		for (Student student : students) {
			System.out.print(student.getId() +" ");
			System.out.print(student.getGrade().getGrade()+"\n");
			grade+=(float)student.getGrade().getGrade();
		}
		
		return grade/6;
	}
	public List<Student> listStudentByIdGroup(int id_group){
		Session session = sessionFactory.getCurrentSession();
		GroupStudent gr = session.get(GroupStudent.class, id_group);
		Student st0 = session.get(Student.class, gr.getLeader());
		Student st1 = session.get(Student.class, gr.getStudent1());
		Student st2 = session.get(Student.class, gr.getStudent2());
		Student st3 = session.get(Student.class, gr.getStudent3());
		Student st4 = session.get(Student.class, gr.getStudent4());
		Student st5 = session.get(Student.class, gr.getStudent5());
		List<Student > students = new ArrayList<Student>();
		students.add(st0);
		students.add(st1);
		students.add(st2);
		students.add(st3);
		students.add(st4);
		students.add(st5);
		return students;
		
	}
	
	public List<GroupStudentCustom> customsById(int id_professor){
		List<GroupStudentCustom> result = new ArrayList<GroupStudentCustom>();
		List<GroupStudent> sts = listRegisterGroup(id_professor);
		Session session = sessionFactory.getCurrentSession();
		for (GroupStudent groupStudent : sts) {
			Student st = session.get(Student.class, groupStudent.getLeader());
			GroupStudentCustom stcustom = new GroupStudentCustom(groupStudent.getId(), st.getSname(), totalAvg(groupStudent.getId()));
			result.add(stcustom);
		}
		return result;
	}
	
}
//Ten nhom truong : diem trung binh
