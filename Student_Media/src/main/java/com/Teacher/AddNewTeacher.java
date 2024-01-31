package com.Teacher;

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
 * Servlet implementation class AddNewTeacher
 */
@WebServlet("/AddNewTeacher")
public class AddNewTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewTeacher() {
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
		
		//start
		
		
		Random rnd = new Random();
		int id = rnd.nextInt(9000) + 10000;
		String name = request.getParameter("name");
		String address = request.getParameter("Address");
		String Mail = request.getParameter("Mail");
		String Department_Name = request.getParameter("Department_Name");
		String Number = request.getParameter("Number");
		String Department_Number = request.getParameter("Department_Number");
		String DOB = request.getParameter("DOB");
		String Institute_name = request.getParameter("Institute_name");
		String UserId = request.getParameter("UserId");
		String Password = request.getParameter("Password");
		
		
		HttpSession hs=request.getSession();
		try {
			int addCustomer = DatabaseConnection.insertUpdateFromSqlQuery(
					"insert into add_teacher(Tid,Tname,Address,Mail,Department_name,Number,Department_number,DOB,Institute_name,User_Id,Password)values('"  + id
					+ "','" + name+ "','" + address + "','" + Mail + "','" + Department_Name + "','" + Number + "','" + Department_Number + "','"
							+ DOB + "','" + Institute_name + "','" + UserId +"','" + Password + "')");
			
			if (addCustomer == 1) {
				String message="Customer register successfully.";
				hs.setAttribute("success-message", message);
				
				
				 PrintWriter out = response.getWriter();
					out.println("<script>");
			        out.println("alert('Registered successfully.. ');");
			        out.println("window.location.replace(' index.jsp ');");
			        out.println("</script>");
			        
			} else {
				String message="Customer registration fail";
				hs.setAttribute("fail-message", message);
				System.out.println(" == "+message);
				
				 PrintWriter out = response.getWriter();
				out.println("<script>");
		        out.println("alert('Select another UserId ');");
		        out.println("window.location.replace(' AddNewTeacher.jsp ');");
		        out.println("</script>");
				
				
			}
		} catch (Exception ex) {
			response.sendRedirect("AddNewTeacher.jsp");
			ex.printStackTrace();
		}

	}
	
	
	
	
	// end
		
		
		
		
		
		
		
		
	}


