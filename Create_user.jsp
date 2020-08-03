<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
        <%
		String acc_no=request.getParameter("acc_no");
		String username=request.getParameter("username");
                String br_name=request.getParameter("br_name");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
			Statement st=con.createStatement();
			int r = st.executeUpdate("insert into create_account(acc_no,username,branchname)values('"+acc_no+"','"+username+"','"+br_name+"')");
			ResultSet rs=st.executeQuery("select * from create_account");
                        out.println("Successfully registered");
			if(rs.next())
			{
				session.setAttribute("acc_no",rs.getString("acc_no"));
				session.setAttribute("username",rs.getString("username"));
				response.sendRedirect("index.html");
			}
			else
			{
				response.sendRedirect("create_user_form.jsp");
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
                
	%>
	
