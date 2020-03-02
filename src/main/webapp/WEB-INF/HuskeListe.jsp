<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: marcg
  Date: 02/03/2020
  Time: 11.13
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Huskeliste</title>
</head>
<body>
${sessionScope.besked}
<br>
<h1>Du er nu på min webshop og er nu klar til at tilføje emner</h1>

<form action="BuyServlet" method="post">
    <label for="fname">Skriv vare</label><br>
    <input type="text" id="fname" name="navn"><br>
    <input type="submit" value="tilføj">
</form>

${requestScope.besked}
<br>
<c:forEach var="element" items="${sessionScope.basket}">

    ${element}
    <br>

</c:forEach>


<br>
<br>

<form action="LogOutServlet" method="post">
    <input type="submit" value="Logout">
</form>



</body>
</html>
