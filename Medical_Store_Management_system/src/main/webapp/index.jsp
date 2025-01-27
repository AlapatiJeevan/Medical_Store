<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medical Store Management System</title>
<style>
     body {
        background-image: url('https://img.freepik.com/free-photo/top-view-medical-stuff_23-2148021405.jpg?ga=GA1.1.200472459.1721974060&semt=ais_hybrid'); /* Background image URL */
        background-size: cover; /* Makes the image cover the entire page */
        background-repeat: no-repeat; /* Prevents the image from repeating */
        background-position: center; /* Centers the image */
        color: palegreen; /* Sets the text color */
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }
    .content {
        text-align: center; /* Aligns text to the left */
        padding: 50px; /* Adds some padding for spacing */
    }
    h1 {
        margin: 10px 0;
        color:purple;
    }
    a {
        color:white; /* Changes link color for better visibility */
        text-decoration: none;
        font-size: 35px; /* Adjust link text size */
    }
    a:hover {
        text-decoration: underline; /* Adds underline when hovering over links */
    }
    button {
    	background-color:darkgreen;
    	border:100%;
    	margin:2px;
    	border-radius:50px;
    }
</style>
</head>
<body>
    <div class="content">
        <h1>Welcome to Medical Store Management System</h1>
        <button><h1><a href="addmed.jsp">Add Medicine</a></h1></button><br/>
        <button><h1><a href="searchmed.jsp">Search Medicine</a></h1></button><br/>
        <button><h1><a href="findAll">View All Medicine</a></h1></button>
    </div>
</body>
</html>