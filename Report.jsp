<%@ page  import="java.sql.*"  %>
<html>
<body>

<div style="margin-left:45%; margin-top:5%;font:'Times New Roman', Times, serif;font-size:20px;color:#FF0000;">Customer Details</div>
	<div style="margin-left:5%;">
		<button type="submit" name="delete"><img src="images/delete.png"></button>
		<button type="submit" name="update"><img src="images/edit.png"></button>
	</div>
					
	<% 
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
		Statement s=c.createStatement();    
	%>	
	<div style="max-height:400px; overflow-y:auto; overflow-x:auto; border-bottom:1px solid; border-top:1px solid;border-bottum:1px solid;">
		<table>
							
			<tr style="background:#6D6D6D;">
				
				<td>Username</td>
				<td>Father_name</td>
				<td>Marital_Status</td>
				<td>Spouse_name</td>
				<td>Gender</td>
				<td>dob</td>
				<td>Temp_addr</td>
				<td>Perm_addr</td>
				<td>Res_status</td>
				<td>Nationality</td>
			</tr>
	<%				
		ResultSet rs=s.executeQuery("select * from cus_reg;");
		while(rs.next())
		{
	%>
			<tr>
				
				<td><%=rs.getString("username")%></td>
    				<td><%=rs.getString("father_name")%></td>
				<td><%=rs.getString("marital_status")%></td>
    				<td><%=rs.getString("spouse_name")%></td>
				<td><%=rs.getString("gender")%></td>
    				<td><%=rs.getString("dob")%></td>
				<td><%=rs.getString("temp_addr")%></td>
    				<td><%=rs.getString("perm_addr")%></td>
    				<td><%=rs.getString("res_status")%></td>
				<td><%=rs.getString("nationality")%></td>
    				
    			</tr>
	<%
		}
	%>
		
		</table>
	</div>	
<%}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>
