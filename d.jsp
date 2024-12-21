<%@ page errorPage="one.jsp" %>
<%@ page import="java.sql.*" %>
<%
    String u=request.getParameter("f4");
    response.setContentType("text/html");
    if (u != null) {
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "MINE3464");
        PreparedStatement pst = con.prepareStatement("SELECT * FROM s1 WHERE email = ?");
        pst.setString(1,u);
        ResultSet rs = pst.executeQuery();
        if (rs.next()) {
            String u1 = rs.getString(1); 
            String u2 = rs.getString(2);
            String u3 = rs.getString(3);
            String u4 = rs.getString(4);
            long u5 = rs.getLong(5);
            long u6 = rs.getLong(6);
            String u7 = rs.getString(7);
            String u8 = rs.getString(8);
            String u9 = rs.getString(9);
            long u10 = rs.getLong(10);
            String u11 = rs.getString(11);
            out.print("<body bgcolor='bisque'>");
		   out.print("<style>td, th {padding:10px;}  h1 {text-align:center;font-family:arial;color:blue;}</style>");
			out.print("<h1>u r  Details</h1>");
			out.print("<br>");
			out.print("<table border='2' align='center'>");
			out.print("<tr><th> FIRSTNAME</th><th>LASTName </th><th>PARENTNAME</th><th>EmailIL</th><th>MOBILE NUMBER</th><th>AGE</th><th>BLOOD GROUP</th><th>GENDER</th><th>  ADDRESS</th><th>PINCODE</th><th>ORGANS</th></tr>");
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
				out.print("</tr>");
		
			out.print("</table>");

        } 
	else {
                out.println("User with email " + u + " not found.");
        }
       con.close();
        } catch (Exception e) {
            out.println(e);
        }
    } 
%>
