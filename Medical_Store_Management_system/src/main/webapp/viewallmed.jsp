<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        text-align: center; /* Centers the text */
        padding: 50px; /* Adds padding for spacing */
    }
    h1 {
        margin: 10px 0;
        color: purple;
    }
    a {
        color: white; /* Changes link color for better visibility */
        text-decoration: none;
        font-size: 35px; /* Adjust link text size */
    }
    a:hover {
        text-decoration: underline; /* Adds underline when hovering over links */
        background-color: lightgreen;
    }
    table {
        width: 80%; /* Sets table width */
        margin: 20px auto; /* Centers the table */
        border-collapse: collapse; /* Removes space between table cells */
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
    }
    th, td {
        border: 1px solid black; /* Adds borders to table cells */
        padding: 10px;
        text-align: center;
    }
    th {
        background-color: darkgreen; /* Header background color */
        color: white; /* Header text color */
    }
    td a {
        color: darkblue; /* Links in table cells */
        font-size: 18px;
    }
    td a:hover {
        color: red; /* Change link color on hover */
    }
    td{
    	color: blue;
    }
    button {
        background-color: darkgreen;
        color: white;
        padding: 10px 20px;
        border: none;
        margin: 2px;
        border-radius: 50px;
        font-size: 16px;
        cursor: pointer;
    }
    button:hover {
        background-color: greenyellow;
        color: black;
    }
    hr {
        border: 1px solid purple; /* Styling for horizontal line */
        width: 90%;
    }
</style>
</head>
<body>
    <div class="content">
        <h1>Welcome to Medical Store Management System</h1>
        <hr/>
        <button><h1><a href="addmed.jsp">Add Medicine</a></h1></button>
        <button><h1><a href="searchmed.jsp">Search Medicine</a></h1></button>
        <button><h1><a href="findAll">View All Medicine</a></h1></button>
        <hr/>
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Type</th>
                <th>Brand</th>
                <th>Price per Unit</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach items="${medlist}" var="medicine">
                <tr>
                    <td>${medicine.getId()}</td>
                    <td>${medicine.getName()}</td>
                    <td>${medicine.getType()}</td>
                    <td>${medicine.getBrand()}</td>
                    <td>${medicine.getPrice()}</td>
                    <td><a href="editmed.jsp?id=${medicine.getId()}&name=${medicine.getName()}&type=${medicine.getType()}&brand=${medicine.getBrand()}&price=${medicine.getPrice()}">Edit</a></td>
                    <td><a href="deletebyid?id=${medicine.getId()}">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
