<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%
	int id=Integer.parseInt(request.getParameter("Did"));
	int deleteProduct=DatabaseConnection.insertUpdateFromSqlQuery("delete from documents where Did='"+id+"' ");
	if(deleteProduct>0){
		response.sendRedirect("Teacher_Title_Document.jsp?Corse_Name="+request.getParameter("Corse_Name")+"&"+"Subject_Name="+request.getParameter("Subject_Name"));
	}else{
		response.sendRedirect("Teacher_Title_Document.jsp?Corse_Name="+request.getParameter("Corse_Name")+"&"+"Subject_Name="+request.getParameter("Subject_Name"));
	}
%>


