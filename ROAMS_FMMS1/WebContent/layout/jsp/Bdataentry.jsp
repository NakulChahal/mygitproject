<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page  language="java" contentType="text/html;
charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
 
Db2 sample:
<%
Class.forName("com.ibm.db2.jcc.DB2Driver");
    Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/Databasename","username","password");
 
PreparedStatement Stmt=con.prepareStatement("SELECT * from Sample");
out.println("Statement loaded sucessfuly");
Stmt.executeQuery();
ResultSet rs=Stmt.getResultSet();
out.println("query execute loaded sucessfully");
String name= null;
while(rs.next())
{ name=rs.getString(1);
}
rs.close();Stmt.close();con.close();
if(name != null)
out.println("Welcome to "+name);
 
%>
</body>
</html>