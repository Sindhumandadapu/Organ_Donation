<%@page errorPage="one.jsp"%>
<%@page import ="java.sql.*"%>
<%
String u=request.getParameter("a1");
String v=request.getParameter("a2");
session.setAttribute("username",u);
		Class.forName("oracle.jdbc.driver.OracleDriver");
		out.println("load");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","MINE3464");
		out.println("load");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from abc");
		int f=0;
		while(rs.next())
		{
			if(u.equals(rs.getString(1))&& v.equals(rs.getString(4)))
			{
				f=1;
				break;
			}
		}
	if(f==1)
	{
		RequestDispatcher rd=request.getRequestDispatcher("donar.jsp");
		rd.forward(request,response);
	}
	else
	{
		out.println("<H1>sorry details r not found</H1>");
		RequestDispatcher rd=request.getRequestDispatcher("login.html");
		rd.include(request,response);
	}
	%>
