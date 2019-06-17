package spm.mock.group4.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.loader.plan.build.internal.returns.NonEncapsulatedEntityIdentifierDescription;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spm.mock.group4.dao.TestDao;
import spm.mock.group4.entity.Grade;
import spm.mock.group4.entity.Question;
import spm.mock.group4.entity.Test;
import spm.mock.group4.entity.custom.Score;
import spm.mock.group4.implement.ITest;

@Service
public class TestService implements ITest {

	@Autowired
	TestDao testDao;

	@Override
	@Transactional
	public List<Question> getQuestions(int id_test) {		
		return testDao.getQuestions(id_test);
	}
	
	@Override
	@Transactional
	public String getAnswer(int id_student, int id_question, int answer) {
		return testDao.getAnswer(id_student, id_question, answer);
	}

	@Override
	@Transactional
	public Score score(int userId, int testId) {
		Score sc = testDao.score(userId, testId);
		Grade g = null;
		try {
			g  = testDao.getGrade(userId);
			g.setGrade(sc.getScore());
			testDao.update(g);
		} catch (NoResultException e) {
			g = new Grade();
			g.setGrade(sc.getScore());
			g.setId_student(userId);
			g.setId_test(testId);
			System.out.println(g);
			testDao.saveGrade(g);
		}
		
		return sc; 
	}
	
	@Transactional
	public List<Test> getTests(){
		List<Test> test = null;
		try {
			test = testDao.getTests();
		} catch (NoResultException e) {
			test = new ArrayList<Test>();
		}
		return test;
	}

	@Override
	@Transactional
	public boolean checkDidTest(int testId, int userId) {
		boolean check = false;
		try {
			check = testDao.checkDidTest(testId, userId);
		} catch (NoResultException e) {
			return false;
		}
		return check;
	}
}
