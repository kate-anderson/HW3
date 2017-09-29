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
                <div id="info">
                    <div>
                        <label>Hours Worked:</label>
                        
                        <input type="text" name="hours" value="" size="10" required>
                    </div>
                    <div>
                        <label>Hourly Pay:</label>
                        <input type="text" name="pay" value="" size="10" required>
                    </div>
                    <div>
                        <label>Pre-tax Deduct:</label>
                        <input type="text" name="preTax" value="" size="10" required>
                    </div>
                    <div>
                        <label>Post-tax Deduct:</label>
                        <input type="text" name="postTax" value="" size="10" required>
                    </div>
                </div>
                <div class="buttons">
                    <br>
                <input type="reset" value="Clear" id="clear">
                <input type="submit" value="Submit" id="submit">
                </div>
            </form>
        </div>
    </body>
</html>
