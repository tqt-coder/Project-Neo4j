package bean;

public class cv2 {
	private int id1;
	private String language;
	private float skillScore;
	public int getId1() {
		return id1;
	}
	public void setId1(int id1) {
		this.id1 = id1;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public float getSkillScore() {
		return skillScore;
	}
	public void setSkillScore(float skillScore) {
		this.skillScore = skillScore;
	}
	public cv2() {
		super();
		// TODO Auto-generated constructor stub
	}
	public cv2(int id1, String language, float skillScore) {
		super();
		this.id1 = id1;
		this.language = language;
		this.skillScore = skillScore;
	}
}
