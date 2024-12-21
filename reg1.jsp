
<%@page errorPage="one.jsp"%>
<%@page import ="java.sql.*"%>
<%
String u1=request.getParameter("f1");
String u2=request.getParameter("f2");
String u3=request.getParameter("f3");
String u4=request.getParameter("f4");
long u5=Long.parseLong(request.getParameter("f5"));
long u6=Long.parseLong(request.getParameter("f6"));
String u7=request.getParameter("f7");
String u8=request.getParameter("f8");
String u9=request.getParameter("f9");
long u10=Long.parseLong(request.getParameter("f10"));
String u11=request.getParameter("f11");
String u12=request.getParameter("f12");
String u13=request.getParameter("f13");
String u14=request.getParameter("f14");
String u15=request.getParameter("f15");
response.setContentType("text/html");
try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","MINE3464");
		PreparedStatement pst=con.prepareStatement("insert into s1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1,u1);
		pst.setString(2,u2);
        	pst.setString(3,u3);
		pst.setString(4,u4);
		pst.setLong(5,u5);
        pst.setLong(6,u6);
        pst.setString(7,u7);
        pst.setString(8,u8);
        pst.setString(9,u9);
        pst.setLong(10,u10);
		pst.setString(11,u11);
	pst.setString(12,u12);
        	pst.setString(13,u13);
		pst.setString(14,u14);
		pst.setString(15,u15);
		 session.setAttribute("email",u4);

		int i=pst.executeUpdate();
		if(i==1)
	{
		
			RequestDispatcher rd=request.getRequestDispatcher("reg1.html");
		rd.include(request,response);

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
