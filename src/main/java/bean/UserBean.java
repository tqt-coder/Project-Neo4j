package bean;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class UserBean {
	private String name;
	private String gmail;
	private String password;

	String encryptedpassword = null;

	private void encryptPass() {

		try {
			/* MessageDigest instance for MD5. */
			MessageDigest m = MessageDigest.getInstance("MD5");

			/* Add plain-text password bytes to digest using MD5 update() method. */
			m.update(password.getBytes());

			/* Convert the hash value into bytes */
			byte[] bytes = m.digest();

			StringBuilder s = new StringBuilder();
			for (int i = 0; i < bytes.length; i++) {
				s.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
			}

			/* Complete hashed password in hexadecimal format */
			encryptedpassword = s.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}

//		System.out.println("Plain-text password: " + password);
//		System.out.println("Encrypted password using MD5: " + encryptedpassword);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		
		this.password = password;
		encryptPass();
	}

	public UserBean(String name, String gmail, String password) {
		super();
		this.name = name;
		this.gmail = gmail;
		this.password = password;
	}

	public UserBean() {
		super();
	}

}
