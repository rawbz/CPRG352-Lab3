<%-- 
    Document   : arithmeticcalculator
    Created on : Sep 25, 2021, 10:09:49 PM
    Author     : rmjba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="assets/css/calculatorstyles.css" rel="stylesheet" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1><br>
        <form method="POST" action="arithmetic">
            <table>
                <tr>
                    <td><label>First:</label></td>
                    <td><input type="text" name="first_number" value="${firstNum}"></td>
                </tr>
                <tr>
                    <td><label>Second:</label></td>
                    <td><input type="text" name="second_number" value="${secondNum}"></td>
                </tr>
            </table>
            <input type="submit" class="mathbutton" name="request" value="+">
            <input type="submit" class="mathbutton" name="request" value="-">
            <input type="submit" class="mathbutton" name="request" value="*">
            <input type="submit" class="mathbutton" name="request" value="%">
           
        </form>
        <p>Result: ${results}</p><br>
        <a href="calculator">Age Calculator</a>
        
         <script src="calculatorstyles.css"></script>
    </body>
</html>
