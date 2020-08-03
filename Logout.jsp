<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log Out</title>
    </head>
    <body>
       	<%
		if(session!=null)
               
                    session.invalidate();
                    response.sendRedirect("index.html");
        %>
    </body>
</html>
