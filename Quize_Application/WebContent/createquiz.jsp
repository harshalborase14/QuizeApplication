<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<% 
try {
    String subject= request.getParameter("subject");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quizeapplication","root","Harshal@1402");
    PreparedStatement ps=con.prepareStatement("insert into quizinfo(subject) values('"+subject+"') " );
    int s= ps.executeUpdate();

 }
catch(Exception e){
	e.printStackTrace();
 }
%>

<jsp:forward page="createquiz1.jsp"></jsp:forward>
