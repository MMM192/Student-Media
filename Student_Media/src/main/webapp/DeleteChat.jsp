<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%
	int id=Integer.parseInt(request.getParameter("cid"));
	int deleteProduct=DatabaseConnection.insertUpdateFromSqlQuery("delete from chat_messages where cid='"+id+"' ");
	if(deleteProduct>0){
		response.sendRedirect("Groupchat.jsp");
	}else{
		response.sendRedirect("Groupchat.jsp");
	}
%>

