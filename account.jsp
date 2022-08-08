<%@ page import="java.sql.*"%> 
<%@ page import="java.util.Date" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="accPage.css">
    <!-- Connecting with the stylesheet found inside of current directory 'pages' -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Settings</title>
</head>
<body>
    <div class="center">
        <div class="welcome_message">
            <%
            session.getAttribute("username");
            out.println("Welcome "+session.getAttribute("username"));
            %>
        </div>
        <div class="topnav">
            <ul>		
                <li><a class="active" href="homePage.jsp">Go Back To Homepage</a></li>	
        </div>
        <h1>Change Password?</h1>
        <!-- All of these will be post methods -->
        <!-- Can we just do a SELECT from here or something and then compare to our table using like NOT IN?? or IN? -->
        <form action="passChange.jsp" method="POST">
            <!-- txt field for the user to enter login deets. -->
        <div class="txt_field">
            <!-- required by user -->
            <input type="text" required id="username" name="username">
            <span></span>
            <label>Username</label>
        </div>
        <div class="txt_field">
            <!-- required by user, notice the type is 'password', which means hide txt upon typing into this box -->
            <input type="text" required id="passwordOld" name="passwordOld">
            <span></span>
            <label>Old Password</label>
        </div>
        <div class="txt_field">
            <!-- required by user, notice the type is 'password', which means hide txt upon typing into this box -->
            <input type="password" required id="passwordNew" name="passwordNew">
            <span></span>
            <label>New Password</label>
        </div>
        <input type="submit" value="Change Password">
    </form>
    </div>
</body>
</html>