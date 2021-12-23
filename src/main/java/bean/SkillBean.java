package bean;

public class SkillBean {
	 private String it;
	 private int itValue;
	 private String language;
	 private int languageValue;
	 private String wordGroup;
	 private int wordGroupValue;
	public String getIt() {
		return it;
	}
	public void setIt(String it) {
		this.it = it;
	}
	public int getItValue() {
		return itValue;
	}
	public void setItValue(int itValue) {
		this.itValue = itValue;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public int getLanguageValue() {
		return languageValue;
	}
	public void setLanguageValue(int languageValue) {
		this.languageValue = languageValue;
	}
	public String getWordGroup() {
		return wordGroup;
	}
	public void setWordGroup(String wordGroup) {
		this.wordGroup = wordGroup;
	}
	public int getWordGroupValue() {
		return wordGroupValue;
	}
	public void setWordGroupValue(int wordGroupValue) {
		this.wordGroupValue = wordGroupValue;
	}
	public SkillBean(String it, int itValue, String language, int languageValue, String wordGroup, int wordGroupValue) {
		super();
		this.it = it;
		this.itValue = itValue;
		this.language = language;
		this.languageValue = languageValue;
		this.wordGroup = wordGroup;
		this.wordGroupValue = wordGroupValue;
	}
	public SkillBean() {
		super();
	}
	 

}
