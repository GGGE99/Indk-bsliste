<%--
  Created by IntelliJ IDEA.
  User: marcg
  Date: 02/03/2020
  Time: 10.26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Indkøbsliste</title>
</head>
<body>

<h1>velkommen til din online indkøbsliste.</h1>
<br>
${requestScope.besked}
<br>

<form action="LoginServlet" method="post">
    <label for="fname">First name:</label><br>
    <input type="text" id="fname" name="navn"><br>
    <label for="lname">Last name:</label><br>
    <input type="text" id="lname" name="kodeord" ><br><br>
    <input type="submit" value="login">
</form>

</body>
</html>
