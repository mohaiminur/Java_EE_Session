<%--
  Created by IntelliJ IDEA.
  User: Sifat
  Date: 6/15/2020
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="todo-demo.jsp">
    Add new item: <input type="text" name="theItem"/>

    <input type="submit" value="Submit" />

</form>
<br>
Item entered: <%= request.getParameter("theItem")%>

<%
    List<String> items=(List<String>) session.getAttribute("myToDoList");

    if(items==null){
        items=new ArrayList<String>();
        session.setAttribute("myToDoList",items);

    }
    String theItem = request.getParameter("theItem");
    if(theItem != null){
        items.add(theItem);
    }
%>

<hr>
<b> to do List Items: </b></b>

<ol>
    <%
        for(String temp: items){
            out.println("<li>"+ temp+"</li>");
        }
    %>
</ol>
</body>
</html>
