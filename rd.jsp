<%@page errorPage="one.jsp"%>
<%@page import ="java.sql.*"%>
<%
		   Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","MINE3464");
		   Statement st=con.createStatement();
		   ResultSet rs=st.executeQuery("select * from abc");
		  
		   out.print("<style>td, th {padding:10px;}  h1 {text-align:center;font-family:arial;color:blue;}</style>");
			out.print("<h1>USER DETAILS</h1>");
			out.print("<br>");
                        out.print("<body bgcolor='bisque'>");
			out.print("<table border='2' align='center'>");
			out.print("<tr><th> USERNAME</th><th>EMAIL </th><th>PHONENUMBER</th><th>PASSWORD</th></tr>");
			while(rs.next())
				{
				out.print("<tr>");
				out.print("<td>"+rs.getString(1)+"</td>");
				out.print("<td>"+rs.getString(2)+"</td>");
				out.print("<td>"+rs.getLong(3)+"</td>");
				out.print("<td>"+rs.getString(4)+"</td>");
				out.print("</tr>");
			}
			out.print("</table>");
			out.print("</body>");
		%>