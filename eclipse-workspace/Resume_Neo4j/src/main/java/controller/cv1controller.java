package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.cv1DAO;
import bean.cv1;
import bean.cv2;
import bean.cv3;
import bean.cv4;

/**
 * Servlet implementation class cv1controller
 */
@WebServlet("/")
public class cv1controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public cv1controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch (action) {
			case "/addcv":
				addCv(request, response);
				break;
			case "/delcv":
				delCv(request, response);
				break;
			case "/cv":
				readCv(request, response);
				break;

			case "/editcv":
				editCv(request, response);
				break;
			}
		} catch (Exception ex) {
			throw new ServletException(ex);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void addCv(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id=1;
		String name=request.getParameter("name").trim();
		String email=request.getParameter("email").trim();
		int age=Integer.parseInt(request.getParameter("age").trim());
		String phone=request.getParameter("phone").trim();
		String address=request.getParameter("address").trim();
		cv1 a=new cv1();
		a.setId(id);
		a.setAge(age);
		a.setName(name);
		a.setEmail(email);
		a.setAddress(address);
		a.setPhone(phone);
//		int id=Integer.parseInt(request.getParameter("id").trim());
//		a.setId(id);
//		a.setAge(3);
//		a.setName("a");
//		a.setEmail("a");
//		a.setAddress("a");
//		a.setPhone("0123");
		cv2 b=new cv2();
		b.setId1(a.getId());
		b.setLanguage("VN");
		b.setSkillScore(5);
		cv3 c=new cv3();
		c.setId1(a.getId());
		c.setDep("Machine Learning");
		c.setTime(8);
		c.setWork("DEV");
		cv4 d=new cv4();
		d.setId1(a.getId());
		d.setDiplomaName("Toeic");
		d.setSchool("HCMUTE");
		cv1DAO cv=new cv1DAO();
		boolean flag=cv.addNode(a, b, c, d);
		//
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//
	}

	private void delCv(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id").trim());
		cv1DAO cv=new cv1DAO();
		cv.delNode(id);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	private void readCv(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id").trim());
		int page=Integer.parseInt(request.getParameter("page").trim());
		cv1DAO cv=new cv1DAO();
		List<Object> lst=cv.readNode(id,page);
		for (Object st:lst) {
			switch(page) {
			case 1:
				cv1 c1=new cv1();
				c1=(cv1)st;
				System.out.println(c1.getName() +" "+c1.getAge());
				break;
			case 2:
				cv2 c2=new cv2();
				c2=(cv2)st;
				System.out.println(c2.getLanguage() +" "+c2.getSkillScore());
				break;
			case 3:
				cv3 c3=new cv3();
				c3=(cv3)st;
				System.out.println(c3.getDep()+" "+c3.getWork());
				break;
			case 4:
				cv4 c4=new cv4();
				c4=(cv4)st;
				System.out.println(c4.getSchool()+" "+c4.getDiplomaName());
				break;
			}
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	private void editCv(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id").trim());
		cv1 a=new cv1();
		a.setId(id);
		a.setAge(16);
		a.setName("Nguyen B");
		a.setEmail("a@gmail.com");
		a.setAddress("LHT");
		a.setPhone("0123");
		cv2 b=new cv2();
		b.setLanguage("VN");
		b.setSkillScore(5);
		cv3 c=new cv3();
		c.setDep("Machine Learning");
		c.setTime(8);
		c.setWork("DEV");
		cv4 d=new cv4();
		d.setDiplomaName("Toeic");
		d.setSchool("HCMUTE");
		cv1DAO cv=new cv1DAO();
		boolean flag=cv.editNode(a, b, c, d);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
}
