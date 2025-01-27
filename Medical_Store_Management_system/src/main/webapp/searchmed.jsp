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
        text-align: center; /* Centers text */
        padding: 50px; /* Adds some padding for spacing */
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
    }
    hr {
        border: 1px solid white; /* Customizes the horizontal line */
    }
    table {
        margin: 20px auto;
        background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent background for the table */
        padding: 20px;
        border-radius: 10px;
    }
    td {
        font-size: 20px;
        padding: 10px;
    }
    input[type="text"] {
        padding: 10px;
        font-size: 18px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }
    input[type="submit"],button {
        background-color: darkgreen;
        color: white;
        padding: 10px 20px;
        font-size: 18px;
        border: none;
        border-radius: 15px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: green;
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
        <form action="findbyid">
            <table>
                <% if (request.getAttribute("response") != null) { %>
                <tr>
                    <td colspan="2" style="color: red; font-weight: bold;">
                        <%= request.getAttribute("response") %>
                    </td>
                </tr>
                <% } %>
                <tr>
                    <td>Id:</td>
                    <td><input type="text" name="id" required/></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="Search Medicine"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
