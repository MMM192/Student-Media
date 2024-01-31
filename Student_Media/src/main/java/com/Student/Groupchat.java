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
import javax.servlet.http.Part;

import java.sql.*;
import com.connection.DatabaseConnection;
/**
 * Servlet implementation class Groupchat
 */
@WebServlet("/Groupchat")
public class Groupchat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Groupchat() {
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
		
        HttpSession hs = request.getSession();
		
     
        String sname=(String) hs.getAttribute("Sname");
        int sid=(int) hs.getAttribute("Sid");
			 
				String msg =  request.getParameter("msg");
				 
				
				
				
	 
				try {
					  DatabaseConnection.insertUpdateFromSqlQuery(
             "insert into chat_messages(username,message,timestamp,sid)values('" + sname + "','" + msg + "','" + new Timestamp(System.currentTimeMillis()) + "','" + sid + "')");
					response.sendRedirect("Groupchat.jsp");
					 
				} catch (Exception ex) {
				
					ex.printStackTrace();
				}

			}
			
			
			
			
			// end
				
	
		
		
		
		
	}


