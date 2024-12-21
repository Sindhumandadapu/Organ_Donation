<%@ page import="java.sql.*" %>
<%@ page errorPage="error.jsp" %>

<%
    String userEmail = request.getParameter("f4");
    response.setContentType("text/html");

    if (userEmail != null && !userEmail.isEmpty()) {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "MINE3464");
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM s1 WHERE email = ?");
            preparedStatement.setString(1, userEmail);
            ResultSet resultSet = preparedStatement.executeQuery();

            out.println("<html><head><title>User Details</title></head><body>");

            if (resultSet.next()) {
                out.println("<h1>User Details</h1>");
                out.println("<table border='1'>");
                out.println("<tr><th>First Name</th><th>Last Name</th><th>Parent Name</th><th>Email</th><th>Mobile Number</th><th>Age</th><th>Blood Group</th><th>Gender</th><th>Address</th><th>Pin Code</th><th>Organs</th></tr>");
                out.println("<tr>");
                out.println("<td>" + resultSet.getString("first_name") + "</td>");
                out.println("<td>" + resultSet.getString("last_name") + "</td>");
                out.println("<td>" + resultSet.getString("parent_name") + "</td>");
                out.println("<td>" + resultSet.getString("email") + "</td>");
                out.println("<td>" + resultSet.getLong("mobile_number") + "</td>");
                out.println("<td>" + resultSet.getLong("age") + "</td>");
                out.println("<td>" + resultSet.getString("blood_group") + "</td>");
                out.println("<td>" + resultSet.getString("gender") + "</td>");
                out.println("<td>" + resultSet.getString("address") + "</td>");
                out.println("<td>" + resultSet.getLong("pin_code") + "</td>");
                out.println("<td>" + resultSet.getString("organs") + "</td>");
                out.println("</tr>");
                out.println("</table>");

                // Display update form
                out.println("<h2>Update User Details</h2>");
                out.println("<form action='upd.jsp' method='post'>");
                out.println("<label for='updatedFirstName'>New First Name:</label>");
                out.println("<input type='text' id='updatedFirstName' name='updatedFirstName' placeholder='Enter new first name'><br>");
                out.println("<input type='hidden' id='email' name='email' value='" + userEmail + "'>");
                // Add input fields for other updated data
                out.println("<input type='submit' value='Update'>");
                out.println("</form>");
            } else {
                out.println("<p>User with email " + userEmail + " not found.</p>");
            }

            out.println("</body></html>");
            connection.close();
        } catch (Exception e) {
            out.println("An error occurred: " + e.getMessage());
        }
    } else {
        out.println("<p>No email provided.</p>");
    }
%>
