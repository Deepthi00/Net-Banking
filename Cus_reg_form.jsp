<!DOCTYPE html>
<html>
    <head>
        <title>Customer Registration Form</title>
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
    <body >
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
                                
                                <h2 class="title">Customer Registration Form</h2>  
                       <form action ="cus_reg.jsp" method="post">
                                <table width="70%">
                                    <tr style="height: 40px;">
                                        <td>Name : </td>
                                        <td><input type="text" name="user" size="30" style="height: 25px;"></td>
                                    </tr>
                                    <tr style="height: 40px;">
                                        <td>Father's Name : </td>
                                        <td><input type="text" name="fname" size="30" style="height: 25px;"></td>
                                    </tr>
                                    <tr style="height: 40px;">
                                        <td>Marital Status :</td>
                                        <td><select name="maritalstatus" style="height: 30px;">
                                                 <option>Married</option>
                                                 <option>Single</option>
                                            </select><br><br></td>
                                    </tr>
                                    <tr style="height: 40px;">
                                        <td>Spouse Name :</td>
                                            <td><input type="text" name="spouse" size="30" style="height: 25px;"></td>
                                        </tr>
                                    
                                    <tr style="height: 40px;">
                                        <td>Temporary Address : </td>
                                        <td><textarea name="temp_addr" size="30" style="height: 30px;"></textarea></td>
                                    </tr>
                                    <tr style="height: 40px;">
                                        <td>Permanent Address : </td>
                                        <td><textarea name="perm_addr" size="30" style="height: 30px;"></textarea></td>
                                    </tr><br>
                                    <tr style="height: 40px;">
                                        <td>Gender :</td>
                                        <td><input type="radio" name="gen" value="male">Male
                                            <input type="radio" name="gen" value="female">Female</td><br>
                                    </tr>
                                    <tr style="height: 40px;">
                                        <td>Date of Birth :</td>
                                        <td> <input type="text" name = "dob" size="30" style="height: 30px;"/></td>
                                                                                       
                                    </tr>
                                    <tr style="height: 40px;">
                                        <td>Residential Status :</td>
                                        <td><label><input type="checkbox" name="check">Residential</label>
                                            <label><input type="checkbox" name="check">Non-Residential</label>
                                            <label><input type="checkbox" name="check">NRI</td></label>
                                    </tr>
                                    <tr style="height: 40px;">
                                        <td>Nationality :</td>
                                        <td><input type="text" name="nationality" size="30" style="height: 25px;"></td>
                                    </tr>
                                </table>
                           <table width="70%">
                                 </tr>
                                                 
                                <tr style="height: 40px;">
                             <td align="center">
                                 <input type="submit" value="Submit">
                                 <input type="submit" value="Clear">
                             </td>
                         </tr>
                          </table>
                       </form>   
                            </div>
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
            </center>
    </body>
</html>
