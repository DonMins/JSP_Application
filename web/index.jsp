<%@ page import="MyPackage.Task" %><%--
  Created by IntelliJ IDEA.
  User: Maks
  Date: 23.03.2018
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String arg1 = request.getParameter("str1"), arg2 = request.getParameter("str2");
  boolean isEmpty1 = false, isEmpty2 = false;

  if (arg1 != null && arg2 != null) {
    isEmpty1 = arg1.isEmpty();
    isEmpty2 = arg2.isEmpty();
    if (!isEmpty1 && !isEmpty2) {
      session.setAttribute("task", new Task(arg1, arg2));
      response.sendRedirect("result.html");
    }
  }
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <link rel="stylesheet" href="font.css">
    <title> Лабораторная работа №3 Здорнов М.Ю </title>
</head>

<body>

  <div class="po"></div>
  <div class="la"></div>

  <h1>
    <img src="calc.gif" width="100" height="75"/>
    Вы попали на современный сайт, по складыванию строк. Поздравляем Вас!!!
    <img src="calc.gif" width="100" height="75"/>
  </h1>
  <hr/>
  <h2>
    <div id="bloc">
      <div><a> HELP BOX</a></div>
      <p>
      <div class="line"></div>
      <p>
      <div>
        <a2>Что ж, раз вы сюда пришли - так давайте проверим, как это работает!
          Посмотрим, как комп умеет cкладывать строки.
        </a2>
      </div>
      <p>
      <div class="line"></div>
      <p>
      <div><a> HELP BOX 2</a></div>
      <p>
      <div class="line"></div>
      <p>
      <div>
        <a2>
          Введите подопотные строки в первое и второе поле и нажмите "Отправить".
          Для сброса нажмите "Очистить".
        </a2>
      </div>
    </div>
  </h2>

  <form method="get" action="index.jsp">

    <p>
      Поле для ввода первой строки:
      <input type="text" name="str1" class="<%=isEmpty1 ? "emptystring" : "string"%>" value="${param.str1}"/>

      <% if (isEmpty1) {%>
      :( Ой, строчка то пустая :(
      <% }%>
    </p>

    <p>
      Поле для ввода второй строки:
      <input type="text" name="str2" class="<%= isEmpty2 ? "emptystring" : "string"%>" value="${param.str2}"/>

      <% if (isEmpty2) {%>
      :( Ой, строчка то пустая :(
      <% }%>

    </p>

    <p>
      <input type="submit" value="Отправить">
      <input type="reset" value="Очистить">
    </p>

  </form>
  <embed src="2.mp3" autostart="true" hidden="true" loop="true"></embed>
</body>
</html>
