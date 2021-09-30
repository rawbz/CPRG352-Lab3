<%-- 
    Document   : ageCalcForm
    Created on : Sep 25, 2021, 8:58:42 PM
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
        <h1>Age Calculator</h1>
        <form method="POST" action="calculator">
            <table class="agetable">
                <tr>
                    <td><label>Enter your age:</label></td>
                    <td><input type="text" class="ageinput" name="age" value="${client_age}"></td>
                </tr>
                <tr>
                    <td colspan="2"><input class="agecalc" type="submit" value="Age next birthday"></td>
                </tr>
            </table>
        </form>
        <table>
            <tr>
                <td>${message} ${birthdayMessage}</td>
            </tr>
            <tr>
                <td><a href="arithmetic">Arithmetic Calculator</a></td>
            </tr>
        </table>

    </body>
</html>
