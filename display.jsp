
<%@page errorPage="one.jsp"%>
<%@page import ="java.sql.*"%>
<%
		   Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","MINE3464");
		   Statement st=con.createStatement();
		   ResultSet rs=st.executeQuery("select * from s1");
		  
		   out.print("<style>td, th {padding:10px;}  h1 {text-align:center;font-family:arial;color:blue;}</style>");
			out.print("<h1>DONARS DETAILS</h1>");
			out.print("<br>");
                         out.print("<body bgcolor='bisque'>");

			out.print("<table border='2' align='center'>");
			out.print("<tr><th> FIRSTNAME</th><th>LASTName </th><th>PARENTNAME</th><th>EAMIL</th><th>MOBILE NUMBER</th><th>AGE</th><th>BLOOD GROUP</th><th>GENDER</th><th>ADDRESS</th><th>PINCODE</th><th>HEART</th><th>LIVER</th><th>KIDNEY</th><th>LUNGS</th><th>PANCREAS</th></tr>");
			while(rs.next())
			{
				out.print("<tr>");
				out.print("<td>"+rs.getString(1)+"</td>");
				out.print("<td>"+rs.getString(2)+"</td>");
				out.print("<td>"+rs.getString(3)+"</td>");
				out.print("<td>"+rs.getString(4)+"</td>");
				out.print("<td>"+rs.getLong(5)+"</td>");
				out.print("<td>"+rs.getLong(6)+"</td>");
				out.print("<td>"+rs.getString(7)+"</td>");
				out.print("<td>"+rs.getString(8)+"</td>");
				out.print("<td>"+rs.getString(9)+"</td>");
				out.print("<td>"+rs.getLong(10)+"</td>");
				out.print("<td>"+rs.getString(11)+"</td>");
				out.print("<td>"+rs.getString(12)+"</td>");
				out.print("<td>"+rs.getString(13)+"</td>");
				out.print("<td>"+rs.getString(14)+"</td>");
				out.print("<td>"+rs.getString(15)+"</td>");
				out.print("</tr>");
			}
			out.print("</table>");
			out.print("</body>");
		%>