<%-- 
    Document   : results
    Created on : Sep 28, 2017, 7:41:41 PM
    Author     : kate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <%
        double hoursWorked = Double.parseDouble(request.getParameter("hours"));
        double regPayRate = Double.parseDouble(request.getParameter("pay"));
        double preTaxDeduct = Double.parseDouble(request.getParameter("preTax"));
        double postTaxDeduct = Double.parseDouble(request.getParameter("postTax"));
        double regHours, otHours, otPayRate, otPay, regPay, grossPay, taxablePay, taxAmount, postTaxPay, netPay;
        
        if(hoursWorked>40){
            regHours=40;
            otHours=hoursWorked-40;
            otPayRate= regPayRate*1.5;
            otPay=otHours*otPayRate;
            regPay= regHours*regPayRate;
            grossPay= regPay+otPay; 
        }
        else{
            grossPay=hoursWorked*regPayRate;
        }
        taxablePay= grossPay-preTaxDeduct;
        if(grossPay<500){
            taxAmount=taxablePay*.18;
        }
        else{
            taxAmount=taxablePay*.22;
        }
        postTaxPay=taxablePay-taxAmount;
        netPay=postTaxPay-postTaxDeduct;
        %>
    <body>
        <div class="form">
        <h1 align="center">Salary Information</h1>
        <hr>
        <table class="results">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= regPayRate %></td>
                </tr>
                <tr>
                    <td># Hours Overtime:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= taxablePay %></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmount %></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
            </tbody>
        </table>
        </div>
    </body>
</html>
