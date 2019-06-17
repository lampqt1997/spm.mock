package spm.mock.group4.dao;

import java.sql.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;

import spm.mock.group4.entity.Answer;
import spm.mock.group4.entity.Grade;
import spm.mock.group4.entity.Question;
import spm.mock.group4.entity.Test;
import spm.mock.group4.entity.custom.Score;
import spm.mock.group4.implement.ITest;

@Repository
public class TestDao implements ITest {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Question> getQuestions(int id_test) {
		Session session = sessionFactory.getCurrentSession();
		String query = "from question where id_test =" + id_test;
		List<Question> questions = session.createQuery(query).getResultList();

		return questions;
	}

	public String getAnswer(int id_student, int id_question, int answer) {
		Session session = sessionFactory.getCurrentSession();
		Answer a = new Answer(id_question, answer, id_student, new Date(System.currentTimeMillis()));
		session.save(a);
		return "1";
	}

	public Score score(int userId, int testId) {
		Session session = sessionFactory.getCurrentSession();
		Test test = session.get(Test.class, testId);
		List<Answer> answers = session.createQuery("from answer where id_student = :studentId")
				.setParameter("studentId", userId).getResultList();
		int countQuestion = countQuestionByTestId(testId);
		Score score = new Score();
		score.setNameTest(test.getTname());
		score.setCountAnswer(answers.size());
		score.setCountQuestion(countQuestion);
		score.setTrueAnswer(countTrue(answers));
		score.setScore(calScore(score.getTrueAnswer(), countQuestion));
		return score;

	}

	public float calScore(int countTrue, int countQuestion) {
		float f1 = countTrue;
		float f2 = countQuestion;
		return (f1 / f2) * (10);

	}

	public int countTrue(List<Answer> answers) {
		int count = 0;
		for (Answer answer : answers) {
			if (answer.getQuestion().getAnswerTrue() == answer.getAnswer()) {
				count++;
			}
		}
		return count;
	}

	public int countQuestionByTestId(int testId) {
		Session session = sessionFactory.getCurrentSession();
		long count = (long) session.createQuery("select count(id) from question where id_test = :id group by id_test ")
				.setParameter("id", testId).getSingleResult();
		return Integer.parseInt(String.valueOf(count));
	}

	public Grade getGrade(int userId) {
		Session session = sessionFactory.getCurrentSession();
		Grade grade = (Grade) session.createQuery("from grade where id_student = :id").setParameter("id", userId)
				.getSingleResult();
		return grade;
	}

	public int saveGrade(Grade g) {
		Session session = sessionFactory.getCurrentSession();
		return (int) session.save(g);
	}

	public int update(Grade g) {
		Session session = sessionFactory.getCurrentSession();
		session.update(g);
		Grade g2 = session.get(Grade.class, g.getId());
		if (g.equals(g2)) {
			return 1;
		}
		return 0;
	}

	@Override
	public List<Test> getTests() {
		Session session = sessionFactory.getCurrentSession();
		List<Test> test = session.createQuery("from test").getResultList();
		return test;
	}

	@Override
	public boolean checkDidTest(int testId, int userId) {
		Session session = sessionFactory.getCurrentSession();
		List<Grade> grades = session.createQuery("from grade where id_test = :id").setParameter("id",testId).getResultList();
		for (Grade grade : grades) {
			if (grade.getId_student() == userId) {
				return true;
			}
		}
		return false;
	}
}
