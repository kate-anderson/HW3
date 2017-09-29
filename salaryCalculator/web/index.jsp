<%-- 
    Document   : index
    Created on : Sep 27, 2017, 10:15:22 PM
    Author     : Kate Anderson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body>
        <div class="form">
            <h1 align="center">Simple Salary Calculator</h1>
            <hr>
            <form name="salaryForm" action="results.jsp" method="post">
                <table>
                    <tbody>
                        <tr>
                            <td>Hours Worked:</td>
                            <td><input type="text" name="hours" value="" size="2" required></td>
                        </tr>
                        <tr>
                            <td>Hourly Pay:</td>
                            <td><input type="text" name="pay" value="" size="10" required></td>
                        </tr>
                        <tr>
                            <td>Pre-tax Deduct:</td>
                            <td><input type="text" name="preTax" value="" size="10" required></td>
                        </tr>
                        <tr>
                            <td>Post-tax Deduct:</td>
                            <td><input type="text" name="postTax" value="" size="10" required></td>
                        </tr>
                    </tbody>
                </table>
                <input type="reset" value="Clear" id="clear">
                <input type="submit" value="Submit" id="submit">
            </form>
        </div>
    </body>
</html>
