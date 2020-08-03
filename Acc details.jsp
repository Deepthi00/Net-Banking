<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Balance</title>
    <body>
                <%
        String acc_no = request.getParameter("acc_no"); 
        String username = request.getParameter("username"); 
        String br_name = request.getParameter("br_name"); 
        String bal = request.getParameter("bal"); 

        try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
		Statement s = con.createStatement();
		int r=s.executeUpdate("insert into acc_details values('"+acc_no+"','"+username+"','"+br_name+"','"+bal+"')");
            }
        
	catch(Exception e)
	{
		System.out.println(e);
	}
       out.println("<center><br><br><br><br><br>" + "<h3>Thank you for Processing..!!</h3>");
%>	
</body>

</html>

 
