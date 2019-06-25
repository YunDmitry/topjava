<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<section>
    <table border="1" cellpadding="8" cellspacing="0" style="margin: auto">
        <tr>
            <th>Дата</th>
            <th>Описание</th>
            <th>Калории</th>
        </tr>
        <c:forEach items="${meals}" var="meal">
            <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.MealTo"/>
            <tr bgcolor=<%=meal.isExcess()? "#cd5c5c": "transparent"%>>
                <td><%=meal.getDateTime().format(DateTimeFormatter.ofPattern("dd.MM.yyyy HH:mm"))%></td>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
            </tr>
        </c:forEach>
    </table>
    <br>
</section>
</body>
</html>