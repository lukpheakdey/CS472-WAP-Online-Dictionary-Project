<%-- 
    Document   : dict
    Created on : Dec 17, 2018, 10:48:53 AM
    Author     : lukpheakdey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> Online Dictionary </title>

    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>-->
    <script src ="js/jquery.min.js"></script>

    <link rel="stylesheet" href="css/dict.css">
    <script src ="js/dict.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->

    <!-- Latest compiled JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>    
        
<body>
    <div class="container">
        <div id="banner">
            <div id="banner_logo">
                <img class="center1" src="image/mum_logo.jpg" width="100" height="100">
                Maharishi University of Management
            </div>
        </div>   
        <br>
        <h2> WAP Online Dictionary </h2>
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e0e2e6;">
            <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-lg"> Term: </span>
            </div>
            <input id="term" name="term" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button id="lookupBtn" class="btn btn-outline-success my-3 my-sm-0" type="submit">Lookup</button>
        </nav>
        
        <center id="loader">
            <img src="image/loading.gif">
        </center>
        
        <br>
        <div class="card" id="card-none">
            <div class="card-body" id="result">

            </div>
        </div>
        
<!--        <label id="lookuplable">
            Term:
            <input id="term" name="term" type="text"/>
            <button id="lookupBtn" type="button" class="btn btn-secondary">
                Lookup
            </button>
        </label>-->
<!--        <div id="result">
        </div>-->
   
    </div>
    <div id="footer">
        <div class="footer-copyright text-center text-black-50 py-4">Developed By:
            <a href="http://mumstudents.org/~986591/"> <i> Pheakdey Luk </i> </a>
        </div>
    </div>
</body>
</html>
