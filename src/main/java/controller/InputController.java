package controller;

import java.io.*;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import bean.BackgroundBean;
import bean.EducationBean;
import bean.ExperienceBean;
import bean.SkillBean;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 50, maxRequestSize = 1024 * 1024
		* 100)
@WebServlet(urlPatterns = { "/saveInfor" })
public class InputController extends HttpServlet {
	private static final String UPLOAD_DIR = "/assets/images";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		String fileImage = uploadFile(req); // ảnh

		int countEx = Integer.valueOf(req.getParameter("count-exprience"));
		int countSd = Integer.valueOf(req.getParameter("count-study"));
		
		
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String age = req.getParameter("age");
		String email = req.getParameter("email");
		String skype = req.getParameter("skype");
		String phonenumber = req.getParameter("phone");
		String address = req.getParameter("address");
		String image = fileImage;
		String self_decription = req.getParameter("your-description");//your-major
		String usermajor = req.getParameter("your-major");

		BackgroundBean bgb = new BackgroundBean();
		bgb.setFirstname(firstname);
		bgb.setLastname(lastname);
		bgb.setAddress(address);
		bgb.setAge(age);
		bgb.setEmail(email);
		bgb.setImage(image);
		bgb.setPhonenumber(phonenumber);
		bgb.setSelf_decription(self_decription);
		bgb.setSkype(skype);
		bgb.setMajor(usermajor);
		
		// Học vấn
		List<EducationBean> leb = new ArrayList<EducationBean>();
		
		for(int i=1 ; i<= countSd ; i++) {
			String mayjor  = req.getParameter("mayjor-"+i);//Tên ngành
			String university = req.getParameter("school-"+i);//Tên trường
			String may_startdate		= req.getParameter("school-start-"+i);//Ngày bắt đầu
			String may_enddate  = req.getParameter("school-end-"+i);//Ngày kết thúc
			String mayjor_decription = req.getParameter("jd-school-"+i);//Mô tả thêm
			
			EducationBean user = new EducationBean();
			user.setMayjor(mayjor);
			user.setUniversity(university);
			user.setMay_startdate(may_startdate);
			user.setMay_enddate(may_enddate);
			user.setMayjor_decription(mayjor_decription);
			
			leb.add(user);
		}
	
		// Kinh nghiệm
		List<ExperienceBean> lex = new ArrayList<ExperienceBean>();
		
		for(int i=1 ; i<= countEx ; i++) {
			String position  = req.getParameter("job-"+i);//Vị trí từng làm việc
			String company = req.getParameter("job-place-"+i);//Tên công ty
			String pos_startdate		= req.getParameter("job-start-"+i);//Ngày bắt đầu
			String pos_enddate  = req.getParameter("job-end-"+i);//Ngày kết thúc
			String position_decription = req.getParameter("jd-"+i);//Mô tả thêm

			ExperienceBean user = new ExperienceBean();
			user.setPosition(position);
			user.setCompany(company);
			user.setPos_startdate(pos_startdate);
			user.setPos_enddate(pos_enddate);
			user.setPosition_decription(position_decription);
			
			lex.add(user);
		}
		
		// kỹ năng
		String it  = req.getParameter("information");
		int itValue =  Integer.valueOf(req.getParameter("information-value"));
		String language		= req.getParameter("language");
		int languageValue  = Integer.valueOf(req.getParameter("language-value"));
		String wordGroup = req.getParameter("workgroup");
		int wordGroupValue =Integer.valueOf(req.getParameter("workgroup-value"));
		
		SkillBean userSkill = new SkillBean();
		userSkill.setIt(it);
		userSkill.setItValue(itValue);
		userSkill.setLanguage(language);
		userSkill.setLanguageValue(languageValue);
		userSkill.setWordGroup(wordGroup);
		userSkill.setWordGroupValue(wordGroupValue);


		
		req.setAttribute("bgb", bgb);
		req.setAttribute("userSkill", userSkill);
		req.setAttribute("leb", leb);
		req.setAttribute("lex", lex);
		
		req.getRequestDispatcher("/views/viewCV.jsp").forward(req, resp);
	}

	private String uploadFile(HttpServletRequest request) throws IOException, ServletException {
		String fileName = "";
		try {
			Part filePart = request.getPart("userimage");
			fileName = (String) getFileName(filePart);
			String applicationPath = request.getServletContext().getRealPath("");
			String basePath = applicationPath + File.separator + UPLOAD_DIR + File.separator;
			InputStream inputStream = null;
			OutputStream outputStream = null;
			try {
				File outputFilePath = new File(basePath + fileName);
				inputStream = filePart.getInputStream();
				outputStream = new FileOutputStream(outputFilePath);
				int read = 0;
				final byte[] bytes = new byte[1024];
				while ((read = inputStream.read(bytes)) != -1) {
					outputStream.write(bytes, 0, read);
				}
			} catch (Exception e) {
				e.printStackTrace();
				fileName = "";
			} finally {
				if (inputStream != null) {
					inputStream.close();
				}
				if (outputStream != null) {
					outputStream.close();
				}
			}

		} catch (Exception e) {
			fileName = "";
		}
		return fileName;
	}

	private String getFileName(Part part) {
		final String partHeader = part.getHeader("content-disposition");
		System.out.println("*****partHeader :" + partHeader);
		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename")) {
				return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
			}
		}

		return null;
	}

}
