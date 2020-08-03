<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration Details</title>
    </head>
    <body>
        <%
            String name = request.getParameter("user");
            String fname = request.getParameter("fname");
            String maritalstatus = request.getParameter("maritalstatus");
            String spouse = request.getParameter("spouse");
            String temp_addr = request.getParameter("temp_addr");
            String perm_addr = request.getParameter("perm_addr");
            String gen = request.getParameter("gen");
           // String gen1=request.get
            String dob = request.getParameter("dob");
            String res_status = request.getParameter("res_status");
            String nationality = request.getParameter("nationality");
                        
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
                Statement stmt = con.createStatement();
                int r = stmt.executeUpdate("insert into cus_reg(name,father_name,marital_status,spouse_name,temp_addr,perm_addr,gender,dob,res_stat,nationality)values('"+name+"','"+fname+"','"+maritalstatus+"','"+spouse+"','"+temp_addr+"','"+perm_addr+"','"+gen+"','"+dob+"','"+res_status+"','"+nationality+"')");             
                 out.println("<center><br><br><br><br><br>Successfully Registered"
       + "<br><br>"
       + "<h3>Thank you for Processing..!!</h3>");
            }
            catch(Exception e)
            {
                out.println(e);
            }
                   %>
    </body>
</html>
