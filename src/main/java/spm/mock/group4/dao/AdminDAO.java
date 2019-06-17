package spm.mock.group4.dao;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.entity.Professor;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.custom.GroupStudentCustom;
import spm.mock.group4.entity.custom.ListProfessorCustom;
import spm.mock.group4.entity.custom.StudentCustom2;
import spm.mock.group4.implement.IAdmin;

@Repository
public class AdminDAO implements IAdmin {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<GroupStudentCustom> getListGrStuCustom() {
		List<GroupStudentCustom> result = new ArrayList<>();
		GroupStudentCustom groupStudentCustom;
		for (GroupStudent gr : getAllGrStudent()) {
			if (gr.getLeader() == 0)
				continue;
			groupStudentCustom = new GroupStudentCustom(gr.getId(), getNameStudent(gr.getLeader()),
					getAvgGrStudent(gr.getId()));
			result.add(groupStudentCustom);
		}

		for (GroupStudentCustom g : result) {
			System.out.println(g.getLeader() + " ");
		}

		return result;
	}

	public float getAvgGrStudent(int grId) {
		Session ss = sessionFactory.getCurrentSession();
		int count = 0;
		float result = 0;
		if (grId > 0) {
			GroupStudent gr = ss.get(GroupStudent.class, grId);

			if (gr.getLeader() > 0) {
				count++;
				result += getGradeStudent(gr.getLeader());
			}
			if (gr.getStudent1() > 0) {
				count++;
				result += getGradeStudent(gr.getStudent1());

			}
			if (gr.getStudent2() > 0) {
				count++;
				result += getGradeStudent(gr.getStudent2());

			}
			if (gr.getStudent3() > 0) {
				count++;
				result += getGradeStudent(gr.getStudent3());

			}

			if (gr.getStudent4() > 0) {
				count++;
				result += getGradeStudent(gr.getStudent4());

			}
			if (gr.getStudent5() > 0) {
				count++;
				result += getGradeStudent(gr.getStudent5());

			}
		}
		result = (float) Math.round((result / count) * 10) / 10;
		return result;
	}

	public List<GroupStudent> getAllGrStudent() {
		Session ss = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<GroupStudent> gr = ss.createQuery("from groupstudent").getResultList();
		return gr;
	}

	public String getNameStudent(int id) {
		Session ss = sessionFactory.getCurrentSession();
		Student st = null;
		if (id > 0)
			st = ss.get(Student.class, id);
		return st.getSname();
	}

	public float getGradeStudent(int studentId) {
		Session ss = sessionFactory.getCurrentSession();
		Student st = null;
		if (studentId > 0)
			st = ss.get(Student.class, studentId);
		return st.getGrade().getGrade();
	}

	@Override
	public List<ListProfessorCustom> getListProCustom() {
		List<ListProfessorCustom> result = new ArrayList<>();
		ListProfessorCustom pro;
		for (Professor prof : getListPro()) {
			pro = new ListProfessorCustom(prof.getId(), prof.getPname(), getGroupRegis(prof.getGroup_register()));
			result.add(pro);
		}
		return result;
	}

	public List<Professor> getListPro() {
		List<Professor> list = new ArrayList<>();
		Session ss = sessionFactory.getCurrentSession();
		list = ss.createQuery("from professor").getResultList();
		return list;
	}

	public int getGroupRegis(String str) {
		int count = 0;
		if ("".equals(str)) {
			count=0;
		}else {
			count = str.split("-").length;
		}
		
		return count;
	}

	@Override
	public List<StudentCustom2> getListStudentCustom() {
		List<StudentCustom2> result = new ArrayList<>();
		StudentCustom2 stcus;
		for (Student st : getListStudent()) {
			stcus = new StudentCustom2(st.getId(), st.getUser().getUsername(), st.getSname());
			result.add(stcus);
		}
		return result;
	}

	public List<Student> getListStudent() {
		List<Student> list = new ArrayList<>();
		Session ss = sessionFactory.getCurrentSession();
		list = ss.createQuery("from student").getResultList();
		return list;
	}

	@Override
	public long countGroup() {
		Session ss = sessionFactory.getCurrentSession();
		Query query = ss.createQuery("select count(id) from groupstudent");
		return (long) query.uniqueResult();
	}

	@Override
	public long countStudent() {
		Session ss = sessionFactory.getCurrentSession();
		Query query = ss.createQuery("select count(id) from student");
		return (long) query.uniqueResult();
	}

	@Override
	public long countAccount() {
		Session ss = sessionFactory.getCurrentSession();
		Query query = ss.createQuery("select count(id) from users");
		return (long) query.uniqueResult();
	}

	@Override
	public long countProfessor() {
		Session ss = sessionFactory.getCurrentSession();
		Query query = ss.createQuery("select count(id) from professor");
		return (long) query.uniqueResult();
	}

	@Override
	public long countTopic() {
		Session ss = sessionFactory.getCurrentSession();
		Query query = ss.createQuery("select count(id) from topic");
		return (long) query.uniqueResult();
	}

}
