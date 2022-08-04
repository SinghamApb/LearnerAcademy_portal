<%@ page  import="com.acdmy.connection.ConnectionProvider" %>
<%@ page  import="java.sql.*" %>


<%

   String course = request.getParameter("course");
String studentclass = request.getParameter("studentclass");
String rollNo = request.getParameter("rollNo");
String name = request.getParameter("name");
String fatherName = request.getParameter("fatherName");
String gender = request.getParameter("gender");


try{
	
	Connection con = ConnectionProvider.getCon();
	
	Statement st = con.createStatement();
	st.executeUpdate("insert into student values('"+course+"','"+studentclass+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"')");
	response.sendRedirect("adminHome.jsp");
}


catch(Exception e){
	System.out.println(e);
}



%>