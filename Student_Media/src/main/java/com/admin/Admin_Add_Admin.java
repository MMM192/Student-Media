package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class Admin_Add_Admin
 */
@WebServlet("/Admin_Add_Admin")
public class Admin_Add_Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_Add_Admin() {
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

 
		String name = request.getParameter("name");
		String mail = request.getParameter("mail");
		String number = request.getParameter("number");
		String DOB = request.getParameter("DOB");
		String address = request.getParameter("address");
		String userId = request.getParameter("userId");
	 
		String password = request.getParameter("password");
		 
		
		
		HttpSession hs=request.getSession();
		try {
			int addCustomer = DatabaseConnection.insertUpdateFromSqlQuery(
					"insert into admin(Aname,Amail,Anumber,DOB,Aaadress,User_Id,Password)values('"  
			+ name+ "','" + mail + "','" + number + "','" 
							+ DOB + "','" + address + "','" + userId + "','"
							+ password + "')");
			 	
			if (addCustomer == 1) {
				String message="Customer register successfully.";
				hs.setAttribute("success-message", message);
				
				
				 PrintWriter out = response.getWriter();
					out.println("<script>");
			        out.println("alert('Admin Added successfully.. ');");
			        out.println("window.location.replace(' AdminHome.jsp ');");
			        out.println("</script>");
			        
			} else {
				String message="Customer registration fail";
				hs.setAttribute("fail-message", message);
				System.out.println(" == "+message);
				
				 PrintWriter out = response.getWriter();
				out.println("<script>");
		        out.println("alert('Select another UserId ');");
		        out.println("window.location.replace(' AdminHome.jsp ');");
		        out.println("</script>");
				
				
			}
		} catch (Exception ex) {
			response.sendRedirect("AdminHome.jsp");
			ex.printStackTrace();
		}


 
	}

}
