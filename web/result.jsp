<%--
  Created by IntelliJ IDEA.
  User: Maks
  Date: 01.04.2018
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="MyPackage.Task" %>
<%
    Task task = (Task) request.getSession().getAttribute("task");
    if (task == null) {
        response.setHeader("Refresh", "5; URL=index.jsp");
    }
%>

<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="font.css">
    <title>Результат</title>
</head>

<body>
    <div class="po"></div>
    <div class="la"></div>

    <h1>
        <img src="pen.gif" width="50" height="50"/>
        Ну а вот и результат!
        <img src="pen.gif" width="50" height="50"/>
    </h1>

    <hr>

    <% if (task != null) {%>
        <h4>
            <a> Итак, давай те сложим строчку: <%=task.getStr1()%>
                <br>
                cо строчкой: <%=task.getStr2()%>
                <br>
                Результат: <%=task.getStr1()%>  + <%=task.getStr2()%> =  <%=task.getResult()%>
                <br>
            </a>
        </h4>


            <a>
                 Ну а теперь можно бежать обратно
                <br>
                <a href="index.jsp"> <img src="pic2.gif" width="200" height="200"/></a>
                <br>
                или
                <br>
                получить <a href="result.xml">результат</a> в xml формате

            </a>


    <% }
    else {%>
        <h1>
            Ошибка:(
            Вы будете перенаправлены на <a href="index.jsp">index.jsp</a> через 5 секунд
        <h1>
        <% }%>
</body>
</html>
