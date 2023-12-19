<%--
  Created by IntelliJ IDEA.
  User: stationone
  Date: 12/11/23
  Time: 1:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add</title>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body class="container-fluid card" style="width: 40rem;">
<h2 class="bg-danger text-white text-center">Employee Registration</h2>
<form action="add" method="post">
    <table class="table table-hover">
        <tbody>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Designation</td>
            <td><input type="text" name="designation"></td>
        </tr>
        <tr>
            <td>Salary</td>
            <td><input type="text" name="salary"></td>
        </tr>
        <tr>
            <td><input type="submit" value="register"></td>
        </tr>
        </tbody>
    </table>
</form>

</body>
</html>
