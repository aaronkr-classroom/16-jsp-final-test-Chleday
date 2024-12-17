<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
	<%
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	
	    boolean isValidUser = false;
	
	    // 데이터베이스 연결
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmarket", "root", "password");
	         PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users WHERE username = ? AND password = ?")) {
	
	        stmt.setString(1, username);
	        stmt.setString(2, password);
	
	        ResultSet rs = stmt.executeQuery();
	        if (rs.next()) {
	            isValidUser = true;
	        }
	    }
	
	    if (isValidUser) {
	        session.setAttribute("username", username);
	        response.sendRedirect("protected/home.jsp");
	    } else {
	        response.sendRedirect("loginError.jsp");
	    }
	%>
</body>
</html>