<%--
  Created by IntelliJ IDEA.
  User: marcg
  Date: 02/03/2020
  Time: 11.35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Opret bruger</title>
</head>
<body>

her skal du registere dig inden du kan lave indkøb i min webshop
<br>
<br>
${requestScope.besked}

<br>
<br>

<form action="OpretServlet" method="post">
    <label for="fname">First name:</label><br>
    <input type="text" id="fname" name="navn"><br>
    <label for="lname">Kodeord:</label><br>
    <input type="text" id="lname" name="kodeord"><br><br>
    <input type="submit" value="opret">
</form>

</body>
</html>
