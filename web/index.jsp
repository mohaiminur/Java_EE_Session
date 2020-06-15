<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
<h3>Hello World java</h3>
  The time on the server is <%= new java.util.Date()%>
  <%= new String("sifat").toUpperCase()%>

  Request user agent: <%=request.getHeader("User-Agent") %>
<br/>
  Request Lanuage: <%= request.getLocale()%>
  </body>
</html>