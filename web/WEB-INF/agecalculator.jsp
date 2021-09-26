<%-- 
    Document   : ageCalcForm
    Created on : Sep 25, 2021, 8:58:42 PM
    Author     : rmjba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Age Calculator</h1>
        <form method="POST" action="calculator">
            <label>Enter your age:</label>
            <input type="text" name="age" value="${client_age}"><br>
            <input type="submit" value="Age next birthday">
        </form>
        <p>${message}</p>
        <p>${birthdayMessage}</p>
        <a href="arithmetic">Arithmetic Calculator</a>
    </body>
</html>
