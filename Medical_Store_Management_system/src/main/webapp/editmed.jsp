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
        text-align: center; /* Aligns text to the center */
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
    button {
        background-color: darkgreen;
        border: none;
        margin: 5px;
        border-radius: 50px;
        color: white;
        padding: 10px 20px;
        font-size: 18px;
        cursor: pointer;
    }
    button:hover {
        background-color: green;
    }
    table {
        margin: 0 auto;
        color: white;
        font-size: 20px;
    }
    td {
        padding: 10px;
    }
    input[type="text"], input[type="submit"] {
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }
    input[type="submit"] {
        background-color: darkgreen;
        color: white;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: green;
    }
</style>
</head>
<body>
    <center class="content">
        <h1>Welcome to Medical Store Management System</h1>
        <hr/>
        <button><h1><a href="addmed.jsp">Add Medicine</a></h1></button>
        <button><h1><a href="searchmed.jsp">Search Medicine</a></h1></button>
        <button><h1><a href="findAll">View All Medicine</a></h1></button>
        <hr/>
        <form action="editmedicine">
            <table>
                <% if (request.getAttribute("response") != null) { %>
                <tr>
                    <td colspan="2" style="color: yellow; font-size: 18px;">
                        <%= request.getAttribute("response") %>
                    </td>
                </tr>
                <% } %>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%= request.getParameter("id") %>"/></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="<%= request.getParameter("name") %>"/></td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td><input type="text" name="type" value="<%= request.getParameter("type") %>"/></td>
                </tr>
                <tr>
                    <td>Brand</td>
                    <td><input type="text" name="brand" value="<%= request.getParameter("brand") %>"/></td>
                </tr>
                <tr>
                    <td>Price per Unit</td>
                    <td><input type="text" name="price" value="<%= request.getParameter("price") %>"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="Update Medicine"/>
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
