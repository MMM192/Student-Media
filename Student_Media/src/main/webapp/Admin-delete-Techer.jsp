<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%
	int id=Integer.parseInt(request.getParameter("Did"));
	int deleteProduct=DatabaseConnection.insertUpdateFromSqlQuery("delete from add_teacher where Tid='"+id+"' ");
	if(deleteProduct>0){
		response.sendRedirect("AdminHome.jsp");
	}else{
		response.sendRedirect("AdminHome.jsp");
	}
%>


