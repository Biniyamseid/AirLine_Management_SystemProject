<%--
  Created by IntelliJ IDEA.
  User: stationone
  Date: 12/11/23
  Time: 1:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body class="container-fluid card" style="width: 40rem;">
<h2 class="bg-danger text-white text-center">Delete Employee</h2>
<form action="delete" method="get">
    <label for="id">
        Id :
    </label>
    <input type="text" name="id">
    <input type="submit" value="delete">
</form>

</body></html>