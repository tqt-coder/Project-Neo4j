package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.UserBean;
import dao.UserDAO;
@WebServlet(urlPatterns = {"/Login"})
public class LoginController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String gmail = req.getParameter("gmail");
		String pass= req.getParameter("pass");
		
		UserBean user = new UserBean();
		user.setGmail(gmail);
		user.setPassword(pass);
		
		String result = UserDAO.checkPass(user);
//		System.out.println(result);
		RequestDispatcher rd ;
		if(result != null) {
			req.setAttribute("usergmail", result);
			rd = req.getRequestDispatcher("views/home.jsp");
			rd.forward(req, resp);
		}
		else {
			req.setAttribute("loginFail", "Tên người dùng hoặc mật khẩu không chính xác");
			rd = req.getRequestDispatcher("views/login.jsp");
			rd.forward(req, resp);
		}
	}
}
