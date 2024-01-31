package com.Teacher;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class Update_Teacher_profile
 */
@WebServlet("/Update_Teacher_profile")
public class Update_Teacher_profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_Teacher_profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession hs = request.getSession();
		
		String Name_update = request.getParameter("Name_update");
		String Address_update = request.getParameter("Address_update");
		String Mail_update = request.getParameter("Mail_update");
		String Department_name_update = request.getParameter("Department_name_update");
		String Number_update = request.getParameter("Number_update");
		String Department_number_update = request.getParameter("Department_number_update");
		String DOB_update = request.getParameter("DOB_update");
		String Institute_name_update = request.getParameter("Institute_name_update");
		String User_id_update = request.getParameter("User_id_update");
		String pass_update = request.getParameter("pass_update");
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =  DatabaseConnection.connection;
			
		
			
			
			PreparedStatement pst = con.prepareStatement(
				    "UPDATE add_teacher " +
				    "SET Tname = ?,  Address = ?, Mail = ?, Department_name = ?, Number = ?, Department_number = ?"
				    + ",  DOB = ?, Institute_name = ?, User_Id = ?, Password = ?" +
				    "WHERE Tid = ?");
		
			
			pst.setString(1,Name_update);
			pst.setString(2,Address_update);
			pst.setString(3,Mail_update);
			pst.setString(4,Department_name_update);
			pst.setString(5,Number_update);
			pst.setString(6,Department_number_update);
			pst.setString(7,DOB_update);
			pst.setString(8,Institute_name_update);
			pst.setString(9,User_id_update);
			pst.setString(10,pass_update);
			
			pst.setInt(11,(int) hs.getAttribute("id"));
			
		
			
			
		pst.executeUpdate();
		
		
		
		response.sendRedirect("Teacher_Home.jsp");
		
		
		} catch (Exception ex) {
			response.sendRedirect("Teacher_Home.jsp?loo=pp");
			
			ex.printStackTrace();
		}
		
		
		
		
		
		
		
		
		
	}

}
