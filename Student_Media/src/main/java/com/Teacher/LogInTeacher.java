package com.Teacher;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class LogInTeacher
 */
@WebServlet("/LogInTeacher")
public class LogInTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInTeacher() {
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


		
		
		String UserId = request.getParameter("T_userId");
		String password = request.getParameter("T_pass");
		HttpSession hs = request.getSession();
		hs.setAttribute("id", null);
		hs.setAttribute("Tname",null);
		
		try {
			ResultSet resultset = null;
			resultset = DatabaseConnection.getResultFromSqlQuery(
					"select * from add_teacher where User_Id='" + UserId + "' and Password='" + password + "'");
			if (UserId != null && password != null) {
				if (resultset.next()) {
					hs.setAttribute("id", resultset.getInt("Tid"));
					hs.setAttribute("Tname", resultset.getString("Tname"));
					response.sendRedirect("Teacher_Home.jsp");
					
					
				} else {
					String message = "You have enter wrong credentials";
					hs.setAttribute("credential", message);
					response.sendRedirect("index.jsp");
					
					
				}
			} else {
				System.out.println("User name or Password null");
				response.sendRedirect("index.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
			
			System.out.print("login failed..."+e);
		}
		
		
		
		
		
		
		
	}

}
