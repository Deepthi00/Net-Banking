<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>State Bank Of India</title>
        
    </head>
    <body>
                <%
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
			Statement st=c.createStatement();
			
			ResultSet rs=st.executeQuery("select * from member where username='"+username+"' and password='"+password+"'");
			if(rs.next())
			{
				session.setAttribute("username",rs.getString("username"));
				session.setAttribute("password",rs.getString("password"));
				response.sendRedirect("cus_reg_form.jsp");
			}
			else
			{
				response.sendRedirect("member_form.jsp");
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
			%>
	    </body>
</html>
