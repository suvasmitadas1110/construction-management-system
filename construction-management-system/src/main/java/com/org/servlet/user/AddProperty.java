package com.org.servlet.user;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.org.dao.PropertiesDao;
import com.org.dto.Properties;
import com.org.dto.User;

@MultipartConfig
@WebServlet("/add_property")
public class AddProperty extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Part file = req.getPart("image");
		System.out.println(file);
		String fileName = file.getSubmittedFileName();
		System.out.println(fileName);
		
		String uploadPath = "C:\\Users\\HP\\Desktop\\construction-management-system\\src\\main\\webapp\\property_images\\"+fileName;
		FileOutputStream fos = new FileOutputStream(uploadPath);
		InputStream is = file.getInputStream();
		byte[] data = new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		HttpSession session = req.getSession();
		
		
		User user =(User) session.getAttribute("user");
		System.out.println(user);
		Properties p = new Properties();
		p.setName(req.getParameter("name"));
		p.setPrice(req.getParameter("price"));
		p.setDescription(req.getParameter("description"));
		p.setLocation(req.getParameter("location"));
		p.setImg(fileName);
		p.setUser(user);
		p.setMobile(req.getParameter("phone"));
		
		
		PropertiesDao dao = new PropertiesDao();
		dao.addProperty(p);
		
		session.setAttribute("successful", "Property Added Successfully");
		resp.sendRedirect("user/user_home.jsp");
	}
}
