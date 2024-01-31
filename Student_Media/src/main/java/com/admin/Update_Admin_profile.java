package com.admin;

import java.io.IOException;
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
 * Servlet implementation class Update_Admin_profile
 */
@WebServlet("/Update_Admin_profile")
public class Update_Admin_profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_Admin_profile() {
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
		String Mail_update = request.getParameter("Mail_update");
		String Address_update = request.getParameter("Address_update");
 
		String Number_update = request.getParameter("Number_update");
		 
		String DOB_update = request.getParameter("DOB_update");
	 		String User_id_update = request.getParameter("User_id_update");
		String pass_update = request.getParameter("pass_update");
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =  DatabaseConnection.connection;
			
		
			
			
			PreparedStatement pst = con.prepareStatement(
				    "UPDATE admin " +
				    "SET Aname = ?,  Amail = ?, Anumber = ?, DOB = ?, Aaadress = ?, User_Id = ?"
				    + ",  Password = ?" +
				    "WHERE Aid = ?");
		
			
			pst.setString(1,Name_update);
			pst.setString(2,Mail_update);
			pst.setString(3,Number_update);
			 
			pst.setString(4,DOB_update);
			pst.setString(5,Address_update);
	 
			pst.setString(6,User_id_update);
			pst.setString(7,pass_update);
			
			pst.setInt(8,(int) hs.getAttribute("Aid"));
			
		
			
			
		pst.executeUpdate();
		
		
		
		response.sendRedirect("AdminHome.jsp");
		
		
		} catch (Exception ex) {
			response.sendRedirect("AdminHome.jsp?");
			
			ex.printStackTrace();
		}
		
		
		
	}

}
