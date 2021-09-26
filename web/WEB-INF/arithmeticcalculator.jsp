<%-- 
    Document   : arithmeticcalculator
    Created on : Sep 25, 2021, 10:09:49 PM
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
        <h1>Arithmetic Calculator</h1><br>
        <form method="POST" action="arithmetic">
            <label>First:</label>
            <input type="text" name="first_number" value=""><br>
            <label>Second:</label>
            <input type="text" name="second_number" value=""><br>
            <input type="submit" value="+">
            <input type="submit" value="-">
            <input type="submit" value="*">
            <input type="submit" value="%">
        </form>
        <p>Result: ${results}</p><br>
        <a href="calculator">Arithmetic Calculator</a>
    </body>
</html>
