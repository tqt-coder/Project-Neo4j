package bean;

public class EducationBean {
	 private String	mayjor;
	 private String university;
	 private String may_startdate;
	 private String may_enddate;
	 private String mayjor_decription;
	public String getMayjor() {
		return mayjor;
	}
	public void setMayjor(String mayjor) {
		this.mayjor = mayjor;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public String getMay_startdate() {
		return may_startdate;
	}
	public void setMay_startdate(String may_startdate) {
		this.may_startdate = may_startdate;
	}
	public String getMay_enddate() {
		return may_enddate;
	}
	public void setMay_enddate(String may_enddate) {
		this.may_enddate = may_enddate;
	}
	public String getMayjor_decription() {
		return mayjor_decription;
	}
	public void setMayjor_decription(String mayjor_decription) {
		this.mayjor_decription = mayjor_decription;
	}
	public EducationBean(String mayjor, String university, String may_startdate, String may_enddate,
			String mayjor_decription) {
		super();
		this.mayjor = mayjor;
		this.university = university;
		this.may_startdate = may_startdate;
		this.may_enddate = may_enddate;
		this.mayjor_decription = mayjor_decription;
	}
	public EducationBean() {
		super();
	}
	 
	
}

