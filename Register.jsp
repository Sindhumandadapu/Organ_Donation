<%@page errorPage="one.jsp"%>
<%@page import ="java.sql.*"%>
<%
String u1=request.getParameter("t1");
String u2=request.getParameter("t2");
long u3=Long.parseLong(request.getParameter("t3"));

String u4=request.getParameter("t4");

Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","MINE3464");
		
		PreparedStatement pst=con.prepareStatement("insert into abc values(?,?,?,?)");
		pst.setString(1,u1);
		
		pst.setString(2,u2);
		pst.setLong(3,u3);
		pst.setString(4,u4);
 	        

		int i=pst.executeUpdate();
		if(i==1)
	{
			RequestDispatcher rd=request.getRequestDispatcher("login.html");
			rd.forward(request,response);			

	}
	%>