package bean;

public class ExperienceBean {
	 private String position;
	 private String company;
	 private String pos_startdate;
	 private String pos_enddate;
	 private String position_decription;
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getPos_startdate() {
		return pos_startdate;
	}
	public void setPos_startdate(String pos_startdate) {
		this.pos_startdate = pos_startdate;
	}
	public String getPos_enddate() {
		return pos_enddate;
	}
	public void setPos_enddate(String pos_enddate) {
		this.pos_enddate = pos_enddate;
	}
	public String getPosition_decription() {
		return position_decription;
	}
	public void setPosition_decription(String position_decription) {
		this.position_decription = position_decription;
	}
	public ExperienceBean(String position, String company, String pos_startdate, String pos_enddate,
			String position_decription) {
		super();
		this.position = position;
		this.company = company;
		this.pos_startdate = pos_startdate;
		this.pos_enddate = pos_enddate;
		this.position_decription = position_decription;
	}
	public ExperienceBean() {
		super();
	}
	 
	
}


