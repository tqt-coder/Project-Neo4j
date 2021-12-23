package bean;

public class BackgroundBean {
	 private String firstname;
	 private String lastname;
	 private String age;
	 private String email;
	 private String skype;
	 private String phonenumber;
	 private String address;
	 private String image;
	 private String self_decription;
	 private String major;
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSkype() {
		return skype;
	}
	public void setSkype(String skype) {
		this.skype = skype;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getSelf_decription() {
		return self_decription;
	}
	public void setSelf_decription(String self_decription) {
		this.self_decription = self_decription;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public BackgroundBean(String firstname, String lastname, String age, String email, String skype, String phonenumber,
			String address, String image, String self_decription, String major) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
		this.email = email;
		this.skype = skype;
		this.phonenumber = phonenumber;
		this.address = address;
		this.image = image;
		this.self_decription = self_decription;
		this.major = major;
	}
	public BackgroundBean() {
		super();
	}
	
	
	 
}

