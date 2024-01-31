package com.Student;

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
 * Servlet implementation class LogInStudent
 */
@WebServlet("/LogInStudent")
public class LogInStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInStudent() {
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
		 
		
		String UserId = request.getParameter("S_userId");
		String password = request.getParameter("S_pass");
		HttpSession hs = request.getSession();
		try {
			ResultSet resultset = null;
			resultset = DatabaseConnection.getResultFromSqlQuery(
					"select * from add_student where SUserid='" + UserId + "' and SPassword='" + password + "'");
			if (UserId != null && password != null) {
				if (resultset.next()) {
					hs.setAttribute("Sid", resultset.getInt("Sid"));
					hs.setAttribute("Sname", resultset.getString("Sname"));
					hs.setAttribute("Sdep", resultset.getString("SDeprtmentName"));
					response.sendRedirect("Student_Dashboard.jsp");
					
					
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
			
			System.out.print(e);
		}
		
		
		
		
	}

}
