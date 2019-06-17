package spm.mock.group4.implement;

import java.util.List;

import spm.mock.group4.entity.Question;
import spm.mock.group4.entity.Test;
import spm.mock.group4.entity.custom.Score;

public interface ITest {
	List<Question> getQuestions(int id_test);
	String getAnswer(int id_student, int id_question, int answer);
	Score score(int userId, int testId);
	List<Test> getTests();
	boolean checkDidTest(int testId,int userId);
}
