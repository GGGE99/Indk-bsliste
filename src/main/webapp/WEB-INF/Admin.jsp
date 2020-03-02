<%--
  Created by IntelliJ IDEA.
  User: marcg
  Date: 02/03/2020
  Time: 12.10
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>

    her kan du se listen af brugere, du kan også slette brugere her.
    <br>
    <br>
    <c:forEach var="element" items="${applicationScope.brugerMap}">

        ${element}
        <br>

    </c:forEach>


</body>
</html>
