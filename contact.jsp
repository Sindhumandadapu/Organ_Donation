<%@page errorPage="one.jsp"%>
<%@page import ="java.sql.*"%>
<%
String u1=request.getParameter("f1");
long u2=Long.parseLong(request.getParameter("f2"));
String u3=request.getParameter("f3");
response.setContentType("text/html");
try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","MINE3464");
		
		PreparedStatement pst=con.prepareStatement("insert into con values(?,?,?)");
		pst.setString(1,u1);
		pst.setLong(2,u2);
        	pst.setString(3,u3);
				int i=pst.executeUpdate();
		if(i==1)
	{
			 out.print("insertd successfully");
		  	out.print("<br>");
           		out.print("<style> a{ display:inline-block; background-color:gray; text-align:center;color:black; text-decoration:none; padding:8px; }</style>");
			out.print("<br>");
			out.print("</center>");
			out.print("</body>");

	}
	else
	{
		out.println("sorry Error occured");
	}
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>