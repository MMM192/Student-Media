package com.Teacher;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

/**
 * Servlet implementation class Update_document
 */
@WebServlet("/Update_document")
@MultipartConfig
public class Update_document extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	HttpSession hs = request.getSession();
		
		
		
		Part filePart = request.getPart("pdfFile2");;
        String fileName = filePart.getSubmittedFileName();
        
        int Tid=(int)(hs.getAttribute("id"));
		Random rnd = new Random();
		int id = rnd.nextInt(9000) + 10000;
		String subject_name = request.getParameter("SubjecName");
		String title_of_document = request.getParameter("Title_of_doc");
		String department_name = request.getParameter("Department_Name");
		String department_name_copy = request.getParameter("department_name_copy");
		String course_year = request.getParameter("course_year");
		
		String modifiedDepartmentName = null;
		
		
		
		if (department_name.equals(department_name_copy)) {
		    // Remove the last two characters
		     modifiedDepartmentName = department_name.substring(0, department_name.length() - 2);

		    // Print the modified string
		    System.out.println("Modified Department Name: " + modifiedDepartmentName);
		} else {
			
			modifiedDepartmentName = department_name;
		   
			
		}
		
		
		
		String departmentName_year=modifiedDepartmentName+"-"+course_year;
		
		String Did = request.getParameter("Did");
		
		int Did2 = Integer.parseInt(Did);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =  DatabaseConnection.connection;
			
		
			
			
			PreparedStatement pst = con.prepareStatement(
				    "UPDATE documents " +
				    "SET subject_name = ?,  title_of_document = ?, department_name = ?, course_year = ?, file_name = ?, document = ? " +
				    "WHERE Did = ?");
		
			
			pst.setString(1,subject_name);
			pst.setString(2,title_of_document);
			pst.setString(3,departmentName_year);
			pst.setString(4,course_year);
			pst.setString(5,fileName);
		       InputStream inputStream = filePart.getInputStream();
		pst.setBlob(6,inputStream);
		pst.setInt(7,Did2);
			
			
		pst.executeUpdate();
		
		
		
		response.sendRedirect("Teacher_Home.jsp");
		
		
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		
		
		
		
		
	}

}
