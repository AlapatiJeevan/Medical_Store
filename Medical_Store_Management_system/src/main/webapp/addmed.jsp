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
        text-align: center; /* Centers the text */
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
        margin: 2px;
        border-radius: 50px;
        padding: 10px 20px;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }
    button:hover {
        background-color: greenyellow;
    }
    table {
        margin: 20px auto;
        color: white;
        font-size: 18px;
    }
    input[type="text"] {
        padding: 5px;
        font-size: 16px;
        border-radius: 5px;
        border: 1px solid gray;
    }
    input[type="submit"] {
        background-color: darkgreen;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: greenyellow;
    }
    hr {
        border: 1px solid palegreen;
    }
    td{
    	color:green;
    }
</style>
</head>
<body>
    <div class="content">
        <h1>Please Add the Medicine</h1>
        <button><h1><a href="addmed.jsp">Add Medicine</a></h1></button>
        <button><h1><a href="searchmed.jsp">Search Medicine</a></h1></button>
        <button><h1><a href="findAll">View All Medicines</a></h1></button>
        <hr />
        <form action="save">
            <table>
                <% if (request.getAttribute("response") != null) { %>
                <tr>
                    <td colspan="2" style="color: purple; text-align: center;">
                        <%= request.getAttribute("response") %>
                    </td>
                </tr>
                <% } %>
                <tr>
                    <td>Medicine Name:</td>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td>Medicine Type:</td>
                    <td><input type="text" name="type" /></td>
                </tr>
                <tr>
                    <td>Medicine Brand:</td>
                    <td><input type="text" name="brand" /></td>
                </tr>
                <tr>
                    <td>Price per Unit:</td>
                    <td><input type="text" name="price" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="Add Medicine" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>