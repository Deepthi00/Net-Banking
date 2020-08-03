<%@page import="java.sql.*;"%>
    <head>
      <title>TRANSACTION</title>
        </head>
            <body>
    <%
        String acc_no=request.getParameter("acc_no"); 
        String username=request.getParameter("username");
        String targetacc=request.getParameter("target_acc");
	String amount=request.getParameter("amount");
        
        try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
		Statement s = con.createStatement();
		int r=s.executeUpdate("insert into transaction(acc_no,username,target_acc,amount)values('"+acc_no+"','"+username+"','"+targetacc+"','"+amount+"')");
      	}
	catch(Exception e)
	{
		System.out.println(e);
	}
       out.println("<center><br><br><br><br><br>Transaction Successful"
       + "<br><br>"
       + "<h3>Thank you for Processing..!!</h3>");
%>	
            </body>
</html>

