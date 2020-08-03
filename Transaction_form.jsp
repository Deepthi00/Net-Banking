<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Transaction Form</title>
        <style type="text/css">
        ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 15px 35px;
    text-decoration: none;
}

/* Change the link color to #111 (black) on hover */
li a:hover {
    background-color: #111;
}
</style>
    </head>
    <body background="G:\College\VI semester\Sample mini project\New Folder\Bank Management system\web\images\Floral-Butterfly-Design-Powerpoint-Backgrounds.jpg">
        <center>  
               
        <div id="header-wrapper">
            <div id="header">
                <div id="logo">
                    <h1><u> State Bank Of India </u></h1>                    
                </div>
            </div>
        </div>
            <div id="menu">
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="cus_reg_form.jsp">New Customer</a></li>
                <li><a href="create_user_form.jsp">Create User</a></li>
                 <li><a href="acc_details_form.jsp">Acc_details</a></li>
                <li><a href="transaction_form.jsp">Transaction</a></li>
                <li><a href="close_acc_form.jsp">Close Account</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
              </div>
        
        <div id="wrapper">
            <!-- end #header -->
            <div id="page">
                <div id="page-bgtop">
                    <div id="page-bgbtm">
                        <div id="content">
                            <div class="post">
                                <h2 class="title">Transaction Form</h2>
                     
        <form method="post" action="transaction.jsp">
               <table width="90%" align="center">
                     <tr style="height: 40px;">
                        <td>Account No :</td>
                        <td><input type="text" size="30" style="height: 25px;" name="accno"/></td>
                    </tr>
                    <tr style="height: 40px;">
                        <td>User Name : </td>
                        <td><input type="text" size="30" style="height: 25px;" name="username"/></td>
                    </tr>
                    <tr style="height: 40px;">
                        <td>Target Account :</td>
                        <td><input type="text" size="30" style="height: 25px;" name="target_acc"</td>
                    </tr>
                    <tr style="height: 40px;">
                        <td>Amount :</td>
                        <td><input type="text" name="amount" size="30" style="height: 25px;"/></td>
                    </tr>
                    <tr>
                        <td><center><input type="submit" value="Submit"/></center></td>
                    </tr>
                </table>
               </form>  
         <div style="clear: both;">&nbsp;</div>
                        </div>
                        <!-- end #content -->
                       
                        <!-- end #sidebar -->
                        <div style="clear: both;">&nbsp;</div>
                    </div>
                </div>
            </div>
            <!-- end #page -->
        </div>

    </body>
</html>
