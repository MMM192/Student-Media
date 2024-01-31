package com.Student;

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
 * Servlet implementation class AddNewStudent
 */
@WebServlet("/AddNewStudent")
public class AddNewStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewStudent() {
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
				String Number = request.getParameter("Number");
			
				String institute_name = request.getParameter("institute_name");
				String Department_Name = request.getParameter("Department_Name");
				String DOB = request.getParameter("DOB");
				String STDid = request.getParameter("STDid");
				String UserId = request.getParameter("UserId");
				String Password = request.getParameter("Password");
				
				
				HttpSession hs=request.getSession();
				try {
					int addCustomer = DatabaseConnection.insertUpdateFromSqlQuery(
							"insert into add_student(Sid,Sname,SAddress,SMail,SNumber,Sinstitute_name,SDeprtmentName,SDOB,StudentId,SUserid,SPassword)values('"  + id
							+ "','" + name+ "','" + address + "','" + Mail + "','" + Number + "','" + institute_name + "','" + Department_Name + "','"
									+ DOB + "','" + STDid + "','" + UserId +"','" + Password + "')");
					
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
				        out.println("window.location.replace(' AddNewStudent.jsp ');");
				        out.println("</script>");
						
						
					}
				} catch (Exception ex) {
					response.sendRedirect("AddNewStudent.jsp");
					ex.printStackTrace();
				}

			}
			
			
			
			
			// end
				
				
	
	
	}


