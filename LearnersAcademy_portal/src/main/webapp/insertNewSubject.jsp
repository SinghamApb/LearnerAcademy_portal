<%@ page  import="com.acdmy.connection.ConnectionProvider" %>
<%@ page  import="java.sql.*" %>


<%

  String className = request.getParameter("className");
  String s1 = request.getParameter("s1");
  String s2 = request.getParameter("s2");
  String s3 = request.getParameter("s3");
  String s4 = request.getParameter("s4");
  String s5 = request.getParameter("s5");
  String s6 = request.getParameter("s6");
  String teacher = request.getParameter("teacher");


try{
	
	Connection con = ConnectionProvider.getCon();
	
	Statement st = con.createStatement();
	st.executeUpdate("insert into subject values('"+className+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+teacher+"')");
	response.sendRedirect("adminHome.jsp");
}


catch(Exception e){
	System.out.println(e);
}



%>