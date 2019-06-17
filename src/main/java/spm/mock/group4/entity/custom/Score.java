package spm.mock.group4.entity.custom;

public class Score {
	private String nameTest;
	private int countQuestion;
	private int countAnswer;
	private int trueAnswer;
	private float score;
	public Score(String nameTest, int countQuestion,int countAnswer, int trueAnswer, float score) {
		super();
		this.nameTest = nameTest;
		this.countQuestion = countQuestion;
		this.countAnswer = countAnswer;
		this.trueAnswer = trueAnswer;
		this.score = score;
	}
	public Score() {
		super();
	}
	public String getNameTest() {
		return nameTest;
	}
	public void setNameTest(String nameTest) {
		this.nameTest = nameTest;
	}
	public int getCountQuestion() {
		return countQuestion;
	}
	public void setCountQuestion(int countQuestion) {
		this.countQuestion = countQuestion;
	}
	public int getTrueAnswer() {
		return trueAnswer;
	}
	public void setTrueAnswer(int trueAnswer) {
		this.trueAnswer = trueAnswer;
	}
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
	}
	
	public int getCountAnswer() {
		return countAnswer;
	}
	public void setCountAnswer(int countAnswer) {
		this.countAnswer = countAnswer;
	}
	@Override
	public String toString() {
		return "Score [nameTest=" + nameTest + ",countQuestion=" + countQuestion + ",countAnswer=" + countAnswer
				+ ",trueAnswer=" + trueAnswer + ",score=" + score + "]\n";
	}
	
}
