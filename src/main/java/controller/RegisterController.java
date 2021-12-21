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

@WebServlet(urlPatterns = {"/Register"})
public class RegisterController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String fullName = req.getParameter("HovaTen");
		String gmail = req.getParameter("Gmail");
		String pass= req.getParameter("PassWord");
		
		UserBean user = new UserBean();
		user.setName(fullName);
		user.setGmail(gmail);
		user.setPassword(pass);
		
		boolean result = UserDAO.addUser(user);
		if(result) {
			req.setAttribute("addSuccess", "Thêm thành công");
			RequestDispatcher rd = req.getRequestDispatcher("/views/login.jsp");
			rd.forward(req, resp);
		}
	}
}
