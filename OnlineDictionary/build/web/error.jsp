<%-- 
    Document   : error
    Created on : Dec 17, 2018, 10:48:53 AM
    Author     : lukpheakdey
--%>
 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
</head>
<body>
    <center>
        <h1> Error </h1>
        <h2> <%=exception.getMessage() %> <br/> </h2>
    </center>
</body>
</html>
