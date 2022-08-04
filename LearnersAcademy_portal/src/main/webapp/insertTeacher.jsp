<%@ page  import="com.acdmy.connection.ConnectionProvider" %>
<%@ page  import="java.sql.*" %>


<%

  String className = request.getParameter("className");
  String t1 = request.getParameter("t1");
  String t2 = request.getParameter("t2");
  String t3 = request.getParameter("t3");
  String t4 = request.getParameter("t4");
  String t5 = request.getParameter("t5");
  String t6 = request.getParameter("t6");
  String t7 = request.getParameter("t7");


try{
	
	Connection con = ConnectionProvider.getCon();
	
	Statement st = con.createStatement();
	st.executeUpdate("insert into teacher values('"+className+"','"+t1+"','"+t2+"','"+t3+"','"+t4+"','"+t5+"','"+t6+"','"+t7+"')");
	response.sendRedirect("adminHome.jsp");
}


catch(Exception e){
	System.out.println(e);
}



%>