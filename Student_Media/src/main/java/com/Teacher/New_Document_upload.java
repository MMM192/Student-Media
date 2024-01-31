package com.Teacher;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.connection.DatabaseConnection;


@WebServlet("/New_Document_upload")
@MultipartConfig
public class New_Document_upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		
		
		HttpSession hs = request.getSession();
		
		
		
		Part filePart = request.getPart("pdfFile1");;
        String fileName = filePart.getSubmittedFileName();
        
        int Tid=(int)(hs.getAttribute("id"));
		Random rnd = new Random();
		int id = rnd.nextInt(9000) + 10000;
		String subject_name = request.getParameter("Sub_Name");
		String title_of_document = request.getParameter("title_of_document");
		String department_name = request.getParameter("department_name");
		String course_year = request.getParameter("course_year");
		

		String departmentName_year=department_name+"-"+course_year;
		
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =  DatabaseConnection.connection;
			
		
		
			
			
			PreparedStatement pst=con.prepareStatement("INSERT INTO documents ( Tid,Tname,subject_name,title_of_document,department_name,course_year,file_name,document,department_name_no_year) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			
			pst.setInt(1,Tid);
			pst.setString(2,(String) hs.getAttribute("Tname"));
			pst.setString(3,subject_name);
			pst.setString(4,title_of_document);
			pst.setString(5,departmentName_year);
			pst.setString(6,course_year);
			pst.setString(7,fileName);
		       InputStream inputStream = filePart.getInputStream();
		       pst.setBlob(8,inputStream);
		       pst.setString(9,department_name);
		
			
			
		pst.executeUpdate();
		
		response.sendRedirect("Teacher_Home.jsp");
		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		
		
		
		
		
		
		
		
		
	}

}